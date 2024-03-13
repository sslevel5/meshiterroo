Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  devise_for :users
  root to: "homes#top"

  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resource :post_comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
  get "homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
