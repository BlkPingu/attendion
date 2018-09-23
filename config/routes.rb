Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'

 resources :dodylls

  resources :users do
    resources :events
  end

  root 'welcome#home'
end
