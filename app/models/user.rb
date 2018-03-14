class User < ApplicationRecord
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
  validates :password, presence: true, length: { minimum: 6 }
end
