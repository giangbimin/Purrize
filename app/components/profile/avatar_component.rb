# frozen_string_literal: true

class Profile::AvatarComponent < ViewComponent::Base
  def initialize(profile:)
    @profile = profile
  end

end
