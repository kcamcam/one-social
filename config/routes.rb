Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'welcome#index'
  get 'welcome/index'

  get '/new', to: 'users#new'
  get '/users', to: 'users#index'
  get '/:id',  to: 'users#show'

  resources :users
  resources :social_medium
end
