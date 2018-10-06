Rails.application.routes.draw do

  scope "(:locale)", locale: /en|de/ do

    root 'welcome#home'

    get 'static_pages/help'
    get 'static_pages/privacy'
    get 'static_pages/impressum'

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

    resources :events do
      get :join
    end
  end
end
