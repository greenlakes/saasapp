Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:new, :create]
end
