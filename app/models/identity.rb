class Identity < ApplicationRecord
  PROVIDERS = {facebook: 'facebook', google_oauth2: 'google_oauth2'}
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, scope: :provider
end
