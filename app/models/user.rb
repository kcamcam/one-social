class User < ApplicationRecord
	# Search implemented using
	# https://rubyplus.com/articles/4971-Search-Feature-using-Postgres-9-6-2-and-Rails-5-1
	include PgSearch
	pg_search_scope :search_by_full_name, against: [:name],
							    using: {
							      tsearch: {
							        prefix: true
							      }
							    }
	has_one :social_medium
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  VALID_NAME_REGEX = /\A[a-z0-9\-_]+\z/i #letters,numbers,dashes,underscores
  validates :name,  presence: true,
                    length: { maximum: 25 },
                    format: { with: VALID_NAME_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end
