# frozen_string_literal: true

class QaComponent < ViewComponent::Base
  def initialize id, question, answer
    @id = id
    @question = question
    @answer = answer
  end
end
