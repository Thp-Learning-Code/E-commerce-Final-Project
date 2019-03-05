Rails.application.routes.draw do


  get 'avatar/create'
  resources :line_items
  resources :carts
  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/secret'
  
  resources :pictures do
    resources :pics, only: [:create]
  end

  resources :users do
    resources :avatar, only: [:create]
  end

end
