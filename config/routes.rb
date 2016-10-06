Rails.application.routes.draw do
 
  devise_for :users
  #resources :users, only: [:index, :create, :show, :destroy]

  get '/' => 'home#home'
  get '/home' => 'home#home'

  namespace :admin do
    resources :dogs
    resources :locations
    resources :users
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
