class User < ApplicationRecord
  self.implicit_order_column = 'created_at'

  PROVIDERS = [:facebook, :google_oauth2]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable , omniauth_providers: PROVIDERS
  has_many :identities
  has_one :profile

  validates_acceptance_of :tos_agreement, allow_nil: false, on: :create
end
