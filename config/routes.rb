Rails.application.routes.draw do
  resources :posts
  resources :topics
  resources :courses
  resources :students
root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
