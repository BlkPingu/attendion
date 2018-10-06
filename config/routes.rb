Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    get 'welcome/home'
    get 'events/all', as: :events_all
    get 'users/index'

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
end
