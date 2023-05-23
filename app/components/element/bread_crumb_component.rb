# frozen_string_literal: true

class Element::BreadCrumbComponent < ViewComponent::Base
  def initialize(links:)
    @links = links || []
  end

end
