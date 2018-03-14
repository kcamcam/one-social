Rails.application.routes.draw do
  root 'welcome#index'

  get 'sessions/new'
  get 'users/new'
  get 'welcome/index'
  get 'appstore/likes'
  get 'appstore/dislikes'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    get :likes
    get :dislikes
  end

  resources :licenceplates do
    put :downvote
    put :upvote
    get :likes
    get :dislikes
  end
  resources :appstore do
    put :downvote
    put :upvote
    # get :likes
    # get :dislikes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
