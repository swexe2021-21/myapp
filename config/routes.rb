Rails.application.routes.draw do
  resources :radios
  root 'radios#index'
end
