Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'
  get 'users/new'
  resources :users
end
