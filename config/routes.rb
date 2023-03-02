Rails.application.routes.draw do
  devise_for :users
 
get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'
  # Defines the root path route ("/")
  root "home#index"
end
