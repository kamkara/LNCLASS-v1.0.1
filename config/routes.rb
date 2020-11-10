Rails.application.routes.draw do


  get 'table/index'
  resources :courses do
    resources :exercices, only: [:index, :new, :create, :edit, :update]
  end
  resources :exercices
  resources :levels
  resources :materials
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
