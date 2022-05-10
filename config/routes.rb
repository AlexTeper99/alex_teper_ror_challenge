Rails.application.routes.draw do
  resources :infousers
  resources :users
  devise_for :admins
  root "main#home"
end
