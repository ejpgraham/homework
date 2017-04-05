class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: { message: "Password shouldn't be blank" }
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true }
  #still not sure why password can be nil AND 6 chars.. ask about this 
  before_validation :ensure_session_token


  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)

    return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)

    nil
  end

  def self.generate_session_token
    #rails automatically knows how to access SecureRandom class?
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end


end