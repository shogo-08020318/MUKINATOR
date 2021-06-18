class ResultsController < ApplicationController
  def new
    # 「相談を始める」を押下、ニックネーム入力ページ
    @result = Result.new
    render 'result/name_gender'
  end

  def trouble_category
    # ニックネームと性別をセッションに一時保持
    # binding.pry
    session[:nickname] = params[:result][:nickname]
    session[:gender] = params[:result][:gender]
    # 悩みのカテゴリー選択ページ
    # binding.pry
    render 'result/trouble_category'
  end

  def trouble_select
    # 選択したカテゴリーを使ってそのカテゴリーの悩みを取得
    # binding.pry
    @troubles = Trouble.where(kind: params[:kind])
    # 悩みの選択ページ
    # binding.pry
    render 'result/trouble_select'
  end

  def create
    # 選択した悩みに対する解決策の理由を取得
    # binding.pry
    session[:reason] = Reason.find(params[:trouble_id]).id
    # session[:reason] = @reason.id
    # binding.pry
    @result = Result.new(name: session[:nickname], gender: session[:gender], reason_id: session[:reason])
    # @result = Result.new(result_params)
    # binding.pry
    @result.save!
    render 'result/result'
  end

  private

  # ストロングパラメータで受け取る値を制限する
  def result_params
    params.require(:result).permit(name: session[:nickname], gender: session[:gender], reason_id: session[:reason])
  end
end
