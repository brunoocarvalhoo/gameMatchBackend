Rails.application.routes.draw do
  resources :matches
  namespace :api do
    namespace :v1 do
      resources :tasks
      resources :matches
    end
  end

  post "refresh", controller: :refresh, action: :create
  post "signin", controller: :signin, action: :create
  post "signup", controller: :signup, action: :create
  get "signin", controller: :signin, action: :destroy

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
