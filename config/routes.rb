Rails.application.routes.draw do
  root 'static#home'

  resources :students do
    resources :courses, only: [:index, :show, :new, :edit]
  end

  resources :courses
  resources :goals

  get '/login' => 'sessions#new'
  post '/login' => 'session#create'
  delete '/logout' => 'sessions#destroy'
end
