Rails.application.routes.draw do
  root 'static#home'

  resources :students
  resources :courses
  resources :charts

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
