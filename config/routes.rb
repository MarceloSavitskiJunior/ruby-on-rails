Rails.application.routes.draw do
  resources :carts
  resources :carts do
    resources :products
  end
  root "carts#index"
end
