Rails.application.routes.draw do
  resources :klasses, only: [:show, :index, :new, :create]
  resources :instructors, only: [:show, :index, :new, :create]
  resources :subjects, only: [:show, :index, :new, :create]
  resources :students, except: [:index]
  resources :reviews, except: [:index]

  root 'students#homepage'
  get "/login", to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
