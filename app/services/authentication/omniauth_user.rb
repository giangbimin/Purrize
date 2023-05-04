class Authentication::OmniauthUser
  TEMP_EMAIL_PREFIX = "purrize@com"
 
  def initialize omniauth
    @omniauth = omniauth
  end

  def current_user
    identity = find_identity
    return login_user(identity) if identity.present?
    user = find_user
    return link_user(user) if user.present?
    register_user
  end

  private

  def login_user identity
    identity.user
  end

  def register_user
    # return unless email_verified?
    user = new_user
    identity = new_identity
    ActiveRecord::Base.transaction do
      user.save!
      identity.user = user
      identity.save!
    end
    user
  end

  def link_user user
    identity = new_identity
    identity.user_id = user.uuid
    identity.save!
    user
  end

  def find_user
    return unless email.present?
    User.find_by(email: email)
  end

  def find_identity
    Identity.find_by(uid: @omniauth.uid, provider: @omniauth.provider)
  end

  def new_identity
    identity = Identity.new
    identity.uid = @omniauth.uid
    identity.provider = @omniauth.provider
    identity.full_name = @omniauth.info.name
    identity.image = @omniauth.info.image
    identity
  end

  def new_user
    user = User.new
    user.email = email
    user.password = Devise.friendly_token[0,20]
    user
  end

  def email
    @omniauth.info.email || "#{@omniauth.uid}.#{@omniauth.provider}.#{TEMP_EMAIL_PREFIX}"
  end

  # def email_verified?
  #   @omniauth.info.verified || @omniauth.info.verified_email
  # end
end