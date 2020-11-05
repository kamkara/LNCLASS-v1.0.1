Rails.application.routes.draw do

  resources :levels
  resources :materials
  resources :courses
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'levels#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
