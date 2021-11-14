class ResultsController < ApplicationController
  def new
    @result = Result.new
    render 'results/nickname'
  end

  def trouble_category
    @result = Result.new(nickname_params)
    if params[:result][:nickname].present?
      session[:nickname] = params[:result][:nickname]
    else
      flash.now[:danger] = 'ニックネームを入力してください。'
      render 'results/nickname'
    end
  end

  def trouble_select
    if params[:kind].present?
      @troubles = Trouble.where(kind: params[:kind])
    else
      flash.now[:danger] = '悩みのカテゴリーを選択してください。'
      render 'results/trouble_category'
    end
  end

  def create
    if params[:trouble_id].present?
      reason = Reason.find(params[:trouble_id]).id
      @result = Result.new(name: session[:nickname], reason_id: reason)
      @result.save!
      redirect_to result_path(@result)
    else
      @troubles = Trouble.where(kind: session[:kind])
      flash.now[:danger] = '悩みを選択してください。'
      render 'results/trouble_select'
    end
  end

  def show
    @result = Result.find(params[:id])
    categories = %w[man woman other]
    @video = youtube_get(categories)
    @word = WiseSaying.all.sample
    render 'results/result'
  end

  private

  def nickname_params
    params.require(:result).permit(:name)
  end

  def youtube_get(categories)
    videos = []
    categories.each do |category|
      videos << Exercise.where(category: category).sample
    end
    videos
  end
end
