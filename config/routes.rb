Rails.application.routes.draw do
  # get "settings/profiles", to: "profiles#edit"
  # put "settings/profiles", to: "profiles#update"
  # put "settings/profiles/avatar", to: "profiles#update_avatar"
  # delete "settings/profiles/avatar", to: "profiles#delete_avatar"
  resource :settings do
    resource :sessions, only: [:edit, :update]
    resource :profiles, only: [:edit, :update] do
      member do
        put :update_gmt
        put :update_avatar
        delete :delete_avatar
      end
    end
  end
  root 'home#index'
  get 'faq', to: 'home#faq'
  get 'connect', to: 'home#connect'
  get 'products', to: 'home#products'
  get 'about_services', to: 'home#about_services'
  get 'offical_rules', to: 'home#rules'
  get 'terms_of_service', to: 'home#terms_of_service'
  get 'notification_settings', to: 'home#notification_settings'
  devise_for :users, path: '',
    controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks',
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords',
      confirmations: 'users/confirmations',
      unlocks: 'users/unlocks'
    },
    path_names: {
      sign_in: 'login' ,
      sign_out: 'logout',
      edit: 'profile',
      sign_up: 'registration'
    }
end
