Rails.application.routes.draw do
  root 'static#home'

  resources :students do
    resources :courses
  end
  resources :charts, only: [:show, :index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
