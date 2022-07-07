Rails.application.routes.draw do
  devise_for :users
  # get "home/index"

  resources :quotes

  root to: "quotes#index"
end
