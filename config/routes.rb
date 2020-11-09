Rails.application.routes.draw do
  
  resources :prog_users
  resources :roles
  get 'home/index'
  get 'welcome/index'
  root 'welcome#index'
    
  devise_for :users
  resources :proposals
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
