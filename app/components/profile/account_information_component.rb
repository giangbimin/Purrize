# frozen_string_literal: true

class Profile::AccountInformationComponent < ViewComponent::Base
  def initialize(form:, user:)
    @form = form
    @user = user
  end

end
