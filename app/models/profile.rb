class Profile < ApplicationRecord
  self.primary_key = :user_id

  belongs_to :user
  has_one_attached :avatar, dependent: :destroy
  validates :avatar, attached: true, size: { less_than: 5.megabytes, message: "should be less than 5MB" },
    content_type: { in: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'], message: "must be a valid image format" }

  def avatar_thumnail
    return unless avatar.attached?
    avatar.variant(resize: "150x150!").processed 
  end
end
