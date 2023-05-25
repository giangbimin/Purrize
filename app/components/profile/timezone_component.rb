# frozen_string_literal: true

class Profile::TimezoneComponent < ViewComponent::Base
  TIMEZONES = [["GMT+0 English", 0], ["GMT+7 Viet Nam", 7]].freeze

  def initialize(profile:)
    @profile = profile
    @timezones = TIMEZONES
  end

end
