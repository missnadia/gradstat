Rails.application.routes.draw do
  root 'static#home'

  resources :students
  resources :courses
  resources :goals

  get '/login' => 'sessions#new'
  post '/login' => 'session#create'
  delete '/logout' => 'sessions#destroy'
end
