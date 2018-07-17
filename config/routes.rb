Rails.application.routes.draw do
  root 'static#home'

  resources :students
  resources :courses
  resources :courses do
    resources :charts
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
end
