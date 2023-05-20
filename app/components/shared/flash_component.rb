# frozen_string_literal: true

class Shared::FlashComponent < ViewComponent::Base
  def initialize(message:, type:)
    @message = message
    @type = type || :info
  end

end
