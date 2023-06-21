Rails.application.routes.draw do
  devise_for :admins
  resources :users, only: [:index, :create, :new]
  get "static_pages/home"
  get "static_pages/features", as: :page_features



  devise_scope :admin do
    authenticated :admin do
      namespace :admin do
        get "dashboard/index", as: :authenticated_root
      end
    end
  end
  root "static_pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articlesindex"
end
