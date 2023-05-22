# frozen_string_literal: true

class Authentication::OmniauthButtonComponent < ViewComponent::Base
  def initialize(text:, icon:, callback_url:)
    @text = text
    @icon = icon
    @callback_url = callback_url
  end

end
