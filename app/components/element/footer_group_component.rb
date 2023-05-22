# frozen_string_literal: true

class Element::FooterGroupComponent < ViewComponent::Base
  def initialize(name:, links:)
    @name = name
    @links = links
  end

end
