module ApplicationHelper
  def flash_notices
    render Shared::FlashComponent.new(flash.notice, :info) if flash.notice
  end

  def login_form(resource, resource_name)
    rememberable = devise_mapping.rememberable?
    render LoginFormComponent.new(resource, resource_name, session_path(resource_name), rememberable)
  end

  def omniauth_form(resource_name)
    paths = {
      facebook: omniauth_authorize_path(resource_name, "facebook"),
      google_oauth2: omniauth_authorize_path(resource_name, "google_oauth2")
    }
    render OmniauthFormComponent.new(resource_name, paths)
  end
end
