Rails.application.routes.draw do
  resources :radios
  root 'radios#index'
  post '/radios/search', to: 'radios#search'
end
