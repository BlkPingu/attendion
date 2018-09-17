Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'

  get 'dodyll/new'
  post 'dodyll/create'
  patch 'dodyll/update'
  get 'dodyll/show'
  get 'dodyll/edit'
  get 'dodyll/delete'
  get 'dodyll/update'

  resources :users do
    resources :events
  end

  root 'welcome#home'
end
