Rails.application.routes.draw do
 
  devise_for :users

  get '/' => 'home#home'
  get '/home' => 'home#home'
  get '/admin' => 'admin#index'
  get '/about_dog/:id', to: 'home#about_dog'
  resources :dogs

  namespace :admin do
    resources :dogs
    resources :locations
    resources :users
  end

  
end
