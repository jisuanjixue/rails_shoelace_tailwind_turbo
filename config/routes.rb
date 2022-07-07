Rails.application.routes.draw do
  root to: "quotes#index"

  devise_for :users

  resources :quotes

end
