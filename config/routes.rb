Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get 'events/all', as: :events_all
  get 'users/index'

  resources :dodylls do
    resources :votes
  end

  resources :users do
    resources :events
  end

  resources :events do
    member do
      get :join
    end
  end

  resources :events do get :join
  end
  root 'welcome#home'
end
