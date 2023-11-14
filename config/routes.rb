Rails.application.routes.draw do
  resources :usuarios
  resources :comidas
  
  root "usuarios#index"
end
