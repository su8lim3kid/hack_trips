Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'

  resources :trips do
    resources :locations, only: [:index, :new, :create, :destroy, :show]
  end
  
  resources :locations do
    resources :addresses, only: [:index, :new, :create, :destroy, :show ]
  end

end
