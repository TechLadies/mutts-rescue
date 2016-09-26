Rails.application.routes.draw do
  

=======
  resources :dogs

  get '/' => 'dogs#index'
>>>>>>> e27f17dbb41b7917e50684a2213f5c141e60e7d6
  
  <<<<<< HEAD
  get 'home/home'
  get '/home' => 'home#home'
  resources :dogs


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
