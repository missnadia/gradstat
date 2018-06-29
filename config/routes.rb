Rails.application.routes.draw do
  root 'static#home'
  
  resources :students
  resources :courses
  resources :goals

  get '/signin' => 'sessions#new'
  post '/signin' => 'session#create'
  delete '/signout' => 'sessions#destroy'
end
