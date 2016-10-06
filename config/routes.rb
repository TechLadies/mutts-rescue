Rails.application.routes.draw do
 
  devise_for :users

  get '/' => 'home#home'
  get '/home' => 'home#home'

  namespace :admin do
    resources :dogs
    resources :locations
    resources :users
  end

  
end
