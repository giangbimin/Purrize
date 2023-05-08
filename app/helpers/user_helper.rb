module UserHelper
  def new_user_form(resource, resource_name)
    render NewUserFormComponent.new(resource, resource_name, registration_path(resource_name))
  end
end