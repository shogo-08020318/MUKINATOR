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
    @video = []
    @video[0] = Exercise.where(category: 'man').sample
    @video[1] = Exercise.where(category: 'woman').sample
    @video[2] = Exercise.where(category: 'other').sample
    @word = WiseSaying.all.sample
    render 'results/result'
  end

  private

  def nickname_params
    params.require(:result).permit(:name)
  end
end
