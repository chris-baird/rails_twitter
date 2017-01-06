Rails.application.routes.draw do
  resources :tweets
  root 'pages#show', page: 'home'
  get '/pages/:page', to: 'pages#show'

end
