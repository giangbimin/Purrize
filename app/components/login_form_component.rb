class LoginFormComponent < ViewComponent::Base
  def initialize(resource, resource_name, url, rememberable)
    @resource = resource
    @resource_name = resource_name
    @url = url
    @rememberable = rememberable
  end
end
