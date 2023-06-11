Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get "static_pages/home"

  root "static_pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articlesindex"
end
