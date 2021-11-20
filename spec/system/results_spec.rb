require 'rails_helper'

RSpec.describe "Results", type: :system do
  describe 'ニックネームから解決策提示' do
    context 'トップページ' do
      it 'トップページにアクセスして正常に表示されること' do
        visit root_path
        expect(page).to have_content('この世は筋肉が全て！')
      end

      it '「相談を始める」ボタンを押下するとニックネーム入力ページに遷移すること' do
        visit root_path
        click_link '相談を始める'
        expect(current_path).to eq(new_result_path)
        expect(page).to have_content('ニックネームを入力してください')
      end
    end
  end
end
