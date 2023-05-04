Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, path: '',
    controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks',
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    },
    path_names: {
      sign_in: 'login' ,
      sign_out: 'logout',
      edit: 'profile',
      sign_up: 'registration'
    }
end
