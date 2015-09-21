Rails.application.routes.draw do
  resources :bubbles
  root 'bubbles#index'
end
