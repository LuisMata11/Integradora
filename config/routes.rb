Rails.application.routes.draw do
  resources :locations
  resources :ubicacions
  get '/messages/index'
  resources :messages
  resources :events
  resources :locations
  #resources :fotos
  #resources :atraccions

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :pins
  get 'welcome/index'

  root 'welcome#index'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"
  get '/users/sign_out'


end
