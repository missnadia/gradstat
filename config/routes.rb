Rails.application.routes.draw do
  root 'static#home'

  resources :courses do
    resources :comments, only: [:create, :destroy]
  end
  
  resources :students
  resources :charts, only: [:index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
end
