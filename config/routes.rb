Rails.application.routes.draw do
  devise_for :users

  get '/' => 'home#home'
  get '/home' => 'home#home'
  get '/admin' => 'admin#index'

  namespace :admin do
    resources :dogs
    resources :locations
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
