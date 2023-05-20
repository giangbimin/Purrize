# frozen_string_literal: true

class Shared::PageTitleComponent < ViewComponent::Base
  def initialize(title:, description:)
    @title = title
    @description = description
  end

end
