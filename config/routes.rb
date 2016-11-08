Rails.application.routes.draw do

  devise_for :users

  root to: 'home#home'

  get '/home' => 'home#home'
  get '/admin' => 'admin#index'
  get '/about_dog/:id', to: 'home#about_dog', as: 'about_dog'
  get '/filter', to: 'home#filter', as: 'filter'

  resources :dogs
  

  namespace :admin do
    resources :dogs
    get '/dogs_list' => 'dogs#list'
    resources :locations
    resources :users
    resources :people
  end


end