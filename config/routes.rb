Rails.application.routes.draw do
  
  resources :prog_users
  resources :roles
  get 'home/index'
  get 'welcome/index'
  get 'proposals/archive'
  get 'proposals/active'

  root 'welcome#index'
    
  devise_for :users
  resources :proposals do
    member do
      put "like" => "proposals#upvote"
      put "dislike" => "proposals#downvote"
    end
  end
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
