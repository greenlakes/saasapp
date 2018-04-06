Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:new, :create]
  
  resources :users do
    resource :profile
  end
  
end
