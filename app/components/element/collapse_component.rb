# frozen_string_literal: true

class Element::CollapseComponent < ViewComponent::Base
  def initialize(id:, title:, description:)
    @id = id
    @title = title
    @description = description
  end

end
