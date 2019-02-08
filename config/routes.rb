Rails.application.routes.draw do
  resources :klasses
  resources :instructors
  resources :subjects
  resources :reviews
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
