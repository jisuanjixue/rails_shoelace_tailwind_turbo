Rails.application.routes.draw do
  # get "home/index"

  resources :quotes

  root to: "quotes#index"
end
