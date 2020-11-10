Rails.application.routes.draw do
  resources :class_registrations
  resources :dance_classes
  resources :studios
  resources :styles
  devise_for :users
  # get 'welcome/home'
  root 'welcome#home'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
