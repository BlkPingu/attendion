Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :users do
    resources :events
  end

  root 'welcome#index'
end
