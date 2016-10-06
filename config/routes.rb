Rails.application.routes.draw do
 
  devise_for :users, :path_prefix => 'd'
  #devise_for :users
  #devise_for :users, path: 'admin'

  get '/' => 'home#home'
  get '/home' => 'home#home'

  namespace :admin do
    resources :dogs
    resources :locations
  end

  resources :users, only: [:index, :show, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
