Rails.application.routes.draw do
  get "home/index"
  
  resources :quotes

  root to: "home#index"
end
