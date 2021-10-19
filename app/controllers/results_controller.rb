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
      session[:kind] = params[:kind]
      @troubles = Trouble.where(kind: session[:kind])
    else
      flash.now[:danger] = '悩みのカテゴリーを選択してください。'
      render 'results/trouble_category'
    end
  end

  def create
    if params[:trouble_id].present?
      session[:trouble_id] = params[:trouble_id]
      session[:reason] = Reason.find(session[:trouble_id]).id
      @result = Result.new(name: session[:nickname], reason_id: session[:reason])
      @result.save!
      redirect_to result_path(@result)
    else
      # ここで再度悩みを取得しないと、レンダリング先で@troublesがnilになる
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
