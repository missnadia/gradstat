Rails.application.routes.draw do
  root 'static#home'
  resources :students
  resources :courses
  resources :goals
end
