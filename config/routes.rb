Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get 'events/all'

  resources :users do
    resources :events
  end

  root 'welcome#home'
end
