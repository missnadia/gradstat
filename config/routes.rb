Rails.application.routes.draw do
  root 'static#home'

  resources :students do
    resources :avatars, only: [:create]
  end

  resources :courses
  resources :charts, only: [:index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
end
