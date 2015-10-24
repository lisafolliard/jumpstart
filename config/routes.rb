Rails.application.routes.draw do
  root 'static#index'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :users, only: [:show, :index] do
    resources :images
  end
end
