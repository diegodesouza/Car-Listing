Rails.application.routes.draw do

  root 'manufacturers#index'

  resources :manufacturers, only: [:index, :show, :create, :new]
end
