# frozen_string_literal: true

class Shared::AnnouncementComponent < ViewComponent::Base
  def initialize(title:, description:, action:, href:)
    @title = title
    @description = description
    @action = action
    @href = href
  end

end
