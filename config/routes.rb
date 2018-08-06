Rails.application.routes.draw do
  root 'static#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  resources :courses do
    resources :comments, only: [:create, :destroy]
  end
  
  resources :students
  resources :charts, only: [:index]
  resources :sessions, only: [:create, :destroy]
  resource :static, only: [:home]
end
