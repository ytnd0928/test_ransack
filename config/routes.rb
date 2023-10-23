Rails.application.routes.draw do
  get '/users', to: 'users#index'
  get '/api/users/current', to: 'users#current'
end