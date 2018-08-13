Rails.application.routes.draw do
  get 'welcome/index'

  resources :users, only:[:new, :create]
  resources :events

  resources :user_sessions, only: [:create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  root 'welcome#index'
end
