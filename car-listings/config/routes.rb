Rails.application.routes.draw do

  root 'manufacturers#index'

  resources :manufacturers, only: [:index, :new, :create, :show] do
    resources :cars, only: [:index, :new, :create, :show]
  end
end
