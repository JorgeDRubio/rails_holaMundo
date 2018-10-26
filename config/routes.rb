Rails.application.routes.draw do
  resources :detalle_ordenes
  resources :ordenes
  resources :products
  resources :clients
  get 'saludo/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'saludo#index'
end