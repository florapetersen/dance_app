Rails.application.routes.draw do
  resources :days
  resources :class_registrations
  resources :dance_classes do 
    resources :class_registrations, only: [:index, :new]
  end
  resources :studios do
    resources :dance_classes, only: [:index, :show]
  end
  resources :styles
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do 
    resources :class_registrations, only: [:index, :new]
  end


  # get 'welcome/home'
  root 'welcome#home'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
