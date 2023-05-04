# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    generic_callback(Identity::PROVIDERS[:facebook])
  end

  def google_oauth2
    generic_callback(Identity::PROVIDERS[:google_oauth2])
  end

  def generic_callback(provider)
    @user = Authentication::OmniauthUser.new(auth).current_user
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = auth.except("extra")
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end

  private

  def auth
    @auth ||= request.env['omniauth.auth']
  end
end
