Rails.application.routes.draw do
  
  resources :projects
  resources :tag_names
  resources :comments
  resources :posts 

  get 'home/index'

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

 
  root 'posts#index'

end
