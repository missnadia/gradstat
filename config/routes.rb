Rails.application.routes.draw do
  root 'static#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]

  resources :courses do
    resources :comments, only: [:create, :destroy]
  end
  
  resources :students
  resources :charts, only: [:index]
  resources :sessions, only: [:create, :destroy]
  resource :static, only: [:home]
end