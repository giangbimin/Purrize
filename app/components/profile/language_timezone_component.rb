# frozen_string_literal: true

class Profile::LanguageTimezoneComponent < ViewComponent::Base
  def initialize(form:, profile:)
    @form = form
    @profile = profile
  end

end
