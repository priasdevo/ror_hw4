Rails.application.routes.draw do
  root to: 'main#index'
  post 'main/test'
  get 'main/cal_post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
