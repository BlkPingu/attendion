Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'

  resources :dodylls do
    resources :votes
  end

  resources :users do
    resources :events
  end

  root 'welcome#home'
end
