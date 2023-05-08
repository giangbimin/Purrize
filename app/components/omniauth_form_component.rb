class OmniauthFormComponent < ViewComponent::Base
  def initialize resource_name, paths
    @resource_name = resource_name
    @paths = paths
  end
end
