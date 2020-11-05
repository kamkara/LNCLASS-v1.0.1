Rails.application.routes.draw do
<<<<<<< HEAD
  resources :levels
=======
  resources :materials
>>>>>>> Material
  resources :courses
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to:'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
