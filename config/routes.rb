Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'welcome#index'
  get 'welcome/index'
  get '/help', to: 'welcome#help'
  get '/about', to: 'welcome#about'
  get '/contact', to: 'welcome#contact'
  get '/terms', to: 'welcome#terms'
  get '/privacy', to: 'welcome#privacy'

  get '/new', to: 'users#new'
  get '/users', to: 'users#index'
  get '/:id',  to: 'users#show'

  resources :users
  resources :social_medium
end
