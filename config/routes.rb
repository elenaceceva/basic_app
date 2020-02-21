Rails.application.routes.draw do
  get 'sessions/new'

  get '/signup',  to: 'users#new'
  get '/home', to: 'static_pages#home'
  root 'static_pages#home'
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :to_dos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
