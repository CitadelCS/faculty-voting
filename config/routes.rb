Rails.application.routes.draw do
  
  get 'home/index'
  get 'welcome/index'
  get 'proposals/archive'
  get 'proposals/active'

  root 'welcome#index'
    
  devise_for :users
  resources :proposals
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
