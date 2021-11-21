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

    context '悩みカテゴリー選択ページ' do
      before do
        visit new_result_path
        fill_in 'result_nickname', with: 'テスト太郎'
        click_button '次へ'
      end

      it '悩みカテゴリーのラジオボタンが存在すること' do
        expect(current_path).to eq(trouble_category_results_path)
        has_unchecked_field?('kind_health')
        has_unchecked_field?('kind_ambition')
        has_unchecked_field?('kind_relationship')
        has_unchecked_field?('kind_money')
      end

      it '「健康」を選択した場合、「健康」の悩みが表示されること' do
        has_unchecked_field?('kind_health')
        choose('kind_health')
        has_checked_field?('kind_health')
        click_button '次へ'
        expect(current_path).to eq(trouble_select_results_path)
        expect(page).to have_content('悩みを選択してください')
        has_unchecked_field?('ハゲるのが怖い')
        has_unchecked_field?('痩せない')
      end

      it '「キャリア・夢」を選択した場合、「キャリア・夢」の悩みが表示されること' do
        has_unchecked_field?('kind_ambition')
        choose('kind_ambition')
        has_checked_field?('kind_ambition')
        click_button '次へ'
        expect(current_path).to eq(trouble_select_results_path)
        expect(page).to have_content('悩みを選択してください')
        has_unchecked_field?('就職・転職できるか不安')
        has_unchecked_field?('仕事を失うかもしれない')
      end

      it '「人間関係」を選択した場合、「人間関係」の悩みが表示されること' do
        has_unchecked_field?('kind_relationship')
        choose('kind_relationship')
        has_checked_field?('kind_relationship')
        click_button '次へ'
        expect(current_path).to eq(trouble_select_results_path)
        expect(page).to have_content('悩みを選択してください')
        has_unchecked_field?('初対面で話せない')
        has_unchecked_field?('上司が怖い')
      end

      it '「お金」を選択した場合、「お金」の悩みが表示されること' do
        has_unchecked_field?('kind_money')
        choose('kind_money')
        has_checked_field?('kind_money')
        click_button '次へ'
        expect(current_path).to eq(trouble_select_results_path)
        expect(page).to have_content('悩みを選択してください')
        has_unchecked_field?('浪費してしまう')
        has_unchecked_field?('貯金ができない')
      end

      it '悩みのカテゴリーが未選択の場合、ページが再表示されること' do
        expect(current_path).to eq(trouble_category_results_path)
        click_button '次へ'
        expect(page).to have_content('悩みのカテゴリーを選択してください。')
      end
    end
  end
end
