# frozen_string_literal: true

class HeroSectionComponent < ViewComponent::Base
  include HashConstructed
  attr_accessor :title, :content, :image_url, :primary_btn, :secondary_btn
end
