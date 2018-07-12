Rails.application.routes.draw do
  root 'static#home'

  resources :students do
    resources :courses, only: [:index, :show, :new, :edit]
  end

  resources :courses
  resources :charts

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
