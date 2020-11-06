Rails.application.routes.draw do


  get 'tables_class/index'
  resources :levels
  resources :materials
  resources :courses
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
