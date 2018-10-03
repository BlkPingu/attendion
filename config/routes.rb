Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get 'events/all'
  get 'users/index'

  resources :users do
    resources :events
  end

  resources :events do
    users do
      get :join
    end
  end

  root 'welcome#home'
end
