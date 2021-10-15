class ResultsController < ApplicationController
  def new
    # 「相談を始める」を押下、ニックネーム入力ページ
    @result = Result.new
    render 'results/nickname'
  end

  def trouble_category
    # ニックネームと性別をセッションに一時保持
    # if params[:nickname].present?
    @result = Result.new(nickname_params)
    if params[:result][:nickname].present?
      session[:nickname] = params[:result][:nickname]
    # 悩みのカテゴリー選択ページ
      render 'results/trouble_category'
    else
      flash.now[:danger] = 'ニックネームを入力してください。'
      render 'results/nickname'
    end
  end

  def trouble_select
    # 選択したカテゴリーを使ってそのカテゴリーの悩みを取得
    if params[:kind].present?
      session[:kind] = params[:kind]
      @troubles = Trouble.where(kind: session[:kind])
    # 悩みの選択ページ
      render 'results/trouble_select'
    else
      flash.now[:danger] = '悩みのカテゴリーを選択してください。'
      render 'results/trouble_category'
    end
  end

  def create
    # 選択した悩みに対する解決策の理由を取得
    if params[:trouble_id].present?
      session[:trouble_id] = params[:trouble_id]
      session[:reason] = Reason.find(session[:trouble_id]).id
      # session[:reason] = @reason.id
      # @result = Result.new(name: session[:nickname], gender: session[:gender], reason_id: session[:reason])
      @result = Result.new(name: session[:nickname], reason_id: session[:reason])
      # @result = Result.new(result_params)
      @result.save!
      @video = []
      @video[0] = Exercise.where(category: 'man').sample
      @video[1] = Exercise.where(category: 'woman').sample
      @video[2] = Exercise.where(category: 'other').sample
      @word = WiseSaying.all.sample
      render 'results/result'
    else
      # ここで再度悩みを取得しないと、レンダリング先で@troublesがnilになる
      @troubles = Trouble.where(kind: session[:kind])
      flash.now[:danger] = '悩みを選択してください。'
      render 'results/trouble_select'
    end
  end

  private

  def nickname_params
    params.require(:result).permit(:name)
  end

  # ストロングパラメータで受け取る値を制限する
  def result_params
    params.require(:result).permit(name: session[:nickname], gender: session[:gender], reason_id: session[:reason])
  end
end
