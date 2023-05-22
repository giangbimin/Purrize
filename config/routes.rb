Rails.application.routes.draw do
  root 'home#index'
  get 'faq', to: 'home#faq'
  get 'connect', to: 'home#connect'
  get 'products', to: 'home#products'
  get 'about_services', to: 'home#about_services'
  get 'offical_rules', to: 'home#rules'
  get 'terms_of_service', to: 'home#terms_of_service'
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
