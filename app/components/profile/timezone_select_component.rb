# frozen_string_literal: true

class Profile::TimezoneSelectComponent < ViewComponent::Base
  TIMEZONES = [["GMT+0 English", 0], ["GMT+7 Viet Nam", 7]].freeze

  def initialize(form:, current_timezone:)
    @form = form
    @current_timezone = current_timezone
    @timezones = TIMEZONES
  end

end
