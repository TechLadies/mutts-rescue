Rails.application.routes.draw do
  devise_for :users
  #devise_for :installs
  get '/' => 'home#home'
  get '/home' => 'home#home'
  get '/admin' => 'dogs#index'
  get '/dogs' => 'dogs#index'
  get '/locations' =>'locations#index'

  resources :dogs
  resources :locations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
