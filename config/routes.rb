Rails.application.routes.draw do
  resources :klasses
  resources :instructors
  resources :subjects
  resources :reviews
  resources :students

  root 'students#homepage'
  get "/login", to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
