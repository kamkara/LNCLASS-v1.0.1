Rails.application.routes.draw do


  resources :courses do
    resources :exercices, only: [:index, :new, :create]
  end
  resources :exercices
  get 'tables_class/index'
  resources :levels
  resources :materials
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
