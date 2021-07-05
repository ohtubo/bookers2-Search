Rails.application.routes.draw do
  get 'searches/search'
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  get '/search', to: 'searches#search'
end