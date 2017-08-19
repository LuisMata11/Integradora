Rails.application.routes.draw do
  
  
  resources :posters
  resources :attentions
  resources :aumentaties
  resources :markers
  resources :histories
  resources :orders
  resources :line_items
  resources :carts
  mount ActionCable.server => '/cable'

  resources :messages
  resources :events
  resources :locations
  resources :photos
  resources :store
  resources :atraccions

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :pins
  get 'histories/index'

  root 'histories#index'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"
  get '/users/sign_out'


end
