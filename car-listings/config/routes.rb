Rails.application.routes.draw do

  root 'manufacturer#index'

  resources :manufacturer, only: [:index, :show, :create]
end
