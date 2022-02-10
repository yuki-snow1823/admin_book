Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/books/:id" => "books#show"
  delete "books/:id" => "books#destroy"

  resources :publishers

  # resources :publishers do
  #   resources :books
  #   member do # 小ベルの適用
  #     get 'detail'
  #   end
  #   collection do # 全体への動き
  #     get 'search'
  #   end
  # end
end
