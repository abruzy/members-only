Rails.application.routes.draw do
  root 'homes#index'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  delete '/logout', to: 'sessions#delete', as: 'logout'
  get  '/posts', to: 'posts#index', as: 'post_index'
  get  '/posts/new', to: 'posts#new', as: 'post_new'
  # post '/posts/new', to: 'posts#create', as: 'post_create'

  resources :users
  resources :sessions
  resources :posts, only: [:new, :create, :index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
