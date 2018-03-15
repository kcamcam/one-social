class SocialMedium < ApplicationRecord
	belongs_to :user
	validates_uniqueness_of :user_id
	VALID_NAME_REGEX = /\A[a-z0-9\-_]+\z/i #letters,numbers,dashes,underscores
	validates :twitter,length: { maximum: 40 },
						format: { with: VALID_NAME_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
	validates :github,length: { maximum: 40 },
						format: { with: VALID_NAME_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
	validates :instagram,length: { maximum: 40 },
						format: { with: VALID_NAME_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
	validates :youtube,length: { maximum: 40 },
						format: { with: VALID_NAME_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
	validates :facebook,length: { maximum: 40 },
						format: { with: VALID_NAME_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
end
