Rails.application.routes.draw do
  root 'static#home'

  resources :students do
    resources :avatars
  end

  resources :courses

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get 'student/:id/courses', to: 'student#courses'
end
