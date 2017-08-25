Rails.application.routes.draw do
  resources :chatrooms
  devise_for :users
  get 'home/index'
  root 'home#index'
  get '/sessions.html' to: "home#sessions"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
