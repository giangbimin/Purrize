# frozen_string_literal: true

class Authentication::RegistrationFormComponent < ViewComponent::Base
  def initialize(resource:, resource_name:, url:)
    @resource = resource
    @resource_name = resource_name
    @url = url
  end

end
