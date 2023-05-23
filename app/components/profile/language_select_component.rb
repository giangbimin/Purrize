# frozen_string_literal: true

class Profile::LanguageSelectComponent < ViewComponent::Base
  LANGUAGES = [["English (EN)", 0], ["Viet Nam (VN)", 1]].freeze
 
  def initialize(form:, current_language:)
    @form = form
    @current_language = current_language
    @languages = LANGUAGES
  end

end
