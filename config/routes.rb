Rails.application.routes.draw do
  get 'sign-up', to: 'users#new', as: 'sign_up'
  get 'sessions/new'
  post '/sign-in', to: 'session#create', as: 'sign_in'
  get '/sign-out', to: 'session#delete', as: 'sign_out'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
