Rails.application.routes.draw do
  resources :chatrooms
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'
  get '/sessions.html' => "home#sessions"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
