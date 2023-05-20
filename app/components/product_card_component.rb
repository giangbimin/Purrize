# frozen_string_literal: true

class ProductCardComponent < ViewComponent::Base
  def initialize image_url
    @image_url = image_url
  end
end
