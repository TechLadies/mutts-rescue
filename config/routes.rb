Rails.application.routes.draw do
 
  resources :pages
  devise_for :users

  root to: 'home#home'
  
  get '/home' => 'home#home'
  get '/admin' => 'admin#index'
  get '/about_dog/:id', to: 'home#about_dog', as: 'about_dog'
  get '/filter', to: 'home#filter', as: 'filter'
  get '/admin' => 'admin#index'

  get '/about', :to => redirect('/pages/1')
  get '/contact', :to => redirect('/pages/2')

  resources :dogs

  

  namespace :admin do
    resources :dogs do
      resources :updates  
    end
    resources :locations
    resources :users
    resources :people
  end

  resources :updates

  
end
