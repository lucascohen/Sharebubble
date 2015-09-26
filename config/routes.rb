Rails.application.routes.draw do
  devise_for :users
  resources :bubbles
  root 'bubbles#index'
end
