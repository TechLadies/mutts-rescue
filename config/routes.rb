Rails.application.routes.draw do
 
  resources :photos
  resources :pages
  devise_for :users

  root to: 'home#home'

  get '/home' => 'home#home'
  get '/admin' => 'admin#index'
  get '/about_dog/:id', to: 'home#about_dog', as: 'about_dog'
  get '/filter', to: 'home#filter', as: 'filter'
  get '/admin' => 'admin#index'

#Static Pages Routes
  get '/about', :to => redirect('/pages/1')
  get '/contact', :to => redirect('/pages/2')
  get '/getinvolved', :to => redirect('/pages/3')
  get '/events', :to => redirect('/pages/4')
  get '/merchandise', :to => redirect('/pages/5')

  resources :dogs

  namespace :admin do
    get '/dogs_list' => 'dogs#list'
    resources :dogs do
      resources :updates
      resources :photos
    end  
    resources :locations
    resources :users
    resources :people
    resources :sponsorships
  end

  resources :updates

  
end
