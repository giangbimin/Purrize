# frozen_string_literal: true

class RuleSectionComponent < ViewComponent::Base
  def initialize id, question, answer
    @id = id
    @question = question
    @answer = answer
  end
end
