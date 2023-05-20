# frozen_string_literal: true

class Element::SvgIconComponent < ViewComponent::Base
  TYPES = [:home, :profile, :bookmark, :search, :adjustment, :newest, :followers, :star, :more, :reaction]

  def initialize(type:)
    @type = type
  end

end
