class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar, dependent: :destroy

  def avatar_thumnail
    return unless avatar.attached?
    avatar.variant(resize: "150x150!").processed 
  end

  private

    def add_default_avatar
      return if avatar.attached?
      avatar.attach(
        io: File.open(Rails.root.joins("app", "assets", "images"," default_avatar.png")),
        file_name: "default_avatar.png",
        content_type: "images/png "
      )
    end
end
