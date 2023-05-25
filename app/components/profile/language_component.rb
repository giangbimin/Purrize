# frozen_string_literal: true

class Profile::LanguageComponent < ViewComponent::Base
  LANGUAGES = [["English (EN)", 0], ["Viet Nam (VN)", 1]].freeze
 
  def initialize(profile:)
    @profile = profile
    @languages = LANGUAGES
  end

end
