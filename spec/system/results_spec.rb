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

    context 'ニックネーム入力ページ' do
      it 'ニックネームを入力して「次へ」ボタンを押下するとページ遷移すること' do
        visit new_result_path
        expect(page).to have_content('ニックネームを入力してください')
        fill_in 'result_nickname', with: 'テスト太郎'
        click_button '次へ'
        expect(current_path).to eq(trouble_category_results_path)
        expect(page).to have_content('悩みのカテゴリー')
        expect(page).to have_content('悩みのカテゴリーを選択してください')
      end

      it 'ニックネーム未入力の場合、ページが再表示されること' do
        visit new_result_path
        fill_in 'result_nickname', with: ''
        click_button '次へ'
        expect(page).to have_content('ニックネームを入力してください。')
      end
    end
  end
end
