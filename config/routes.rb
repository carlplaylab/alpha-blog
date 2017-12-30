Rails.application.routes.draw do
  resources :comments
  resources :users
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  
  resources :reeldata
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
