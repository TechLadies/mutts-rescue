Rails.application.routes.draw do
  get '/' => 'dogs#index'
  get '/home' => 'home#home'

  resources :dogs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
