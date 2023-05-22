module ApplicationHelper
  def flash_notices
    render Shared::FlashComponent.new(message: flash.notice, type: :info) if flash.notice
  end
end
