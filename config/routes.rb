Rails.application.routes.draw do
  get 'saludo/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'saludo#index'
end