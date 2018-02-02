Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'contacts#new'
  resources :contacts, only: [:new, :create]
end
