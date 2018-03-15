Rails.application.routes.draw do
  # get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'welcome#index'

  get 'welcome/index'
  get 'users/new'

  resources :users
  resources :social_medium
end
