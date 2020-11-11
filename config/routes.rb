Rails.application.routes.draw do


  get 'dashboard/index'
  resources :courses do
    resources :exercices, only: [:index, :new, :create]
  end
  resources :exercices, only: [:show, :update, :edit, :destroy]
  resources :levels
  resources :materials
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
