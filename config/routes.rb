Rails.application.routes.draw do
  get 'homes/new'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  get '/logout', to: 'sessions#delete', as: 'logout'
  get  '/posts',     to: 'posts#index'
  get  '/posts/new', to: 'posts#new'
  post '/posts/new', to: 'posts#create'

  resources :users
  resources :sessions
  resources :posts, only: [:new, :create, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
