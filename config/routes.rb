Rails.application.routes.draw do
  resources :radios
  root 'radios#index'
  get 'search' => 'posts#search'
end
