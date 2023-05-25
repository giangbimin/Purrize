# frozen_string_literal: true

class Profile::LanguageTimezoneComponent < ViewComponent::Base
  def initialize(profile:)
    @profile = profile
  end
end
