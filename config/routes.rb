Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  root to: 'home#index'
  post '/tasks/:id/toggle' => 'tasks#toggle'
end
