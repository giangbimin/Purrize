# frozen_string_literal: true

class Profile::AvatarComponent < ViewComponent::Base
  def initialize(form:, current_avatar:)
    @form = form
    @current_avatar = current_avatar
  end

end
