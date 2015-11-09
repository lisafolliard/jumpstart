Rails.application.routes.draw do
  root 'users#index'
  get "/about" => "about#index"
  get "/critics" => "critics#index"

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :critics

  resources :users, only: [:show, :index] do
    resources :images
  end

  resources :images, only: [:index] do
    resources :reviews
  end
end
