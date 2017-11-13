Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts
  resources :topics
  resources :courses do
    resources :topics, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :posts, only: [:new, :create, :edit, :update, :show, :destroy]
  end
  resources :students
  root to: 'static#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/courses/:id/follow', to: 'courses#follow'
  get '/courses/:id/unfollow', to: 'courses#unfollow'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
