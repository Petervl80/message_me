Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  resources :users, except: [:new]
end
