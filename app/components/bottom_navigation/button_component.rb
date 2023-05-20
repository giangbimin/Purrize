# frozen_string_literal: true

class BottomNavigation::ButtonComponent < ViewComponent::Base
  def initialize(name:, icon:, href:, is_active:)
    @name = name
    @icon = icon
    @href = href
    @is_active = is_active || false
  end

end
