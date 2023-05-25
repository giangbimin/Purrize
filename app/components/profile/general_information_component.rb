# frozen_string_literal: true

class Profile::GeneralInformationComponent < ViewComponent::Base
  def initialize(profile:)
    @profile = profile
  end

end
