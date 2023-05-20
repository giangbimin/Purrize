# frozen_string_literal: true

class Page::HeroSectionComponent < ViewComponent::Base
  def initialize(title:, description:, image_url:, primary_btn:, secondary_btn:)
    @title = title
    @description = description
    @image_url = image_url
    @primary_btn = primary_btn
    @secondary_btn = secondary_btn
  end

end
