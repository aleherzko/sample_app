Rails.application.routes.draw do
  devise_for :users
  get 'pacients/index'
  
  resources :pacients
  root 'pacients#index'
  
  
end
