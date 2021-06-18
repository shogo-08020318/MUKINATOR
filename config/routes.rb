Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # トップページ
  root 'static_pages#top'

  # , only: %i[new create]
  resources :results do
    collection do
      get 'name_gender'
      get 'trouble_category'
      get 'trouble_select'
    end
  end
end
