class SocialMedium < ApplicationRecord
	belongs_to :user
	validates_uniqueness_of :user_id
	@socialarray = ["twitter","instagram","youtube","facebook","googleplus","pinterest","snapchat","flickr","tumblr","wire","messenger","medium","reddit","hackernews","github","keybase","devpost","devto","angel","linkedin","steam","origin","twitch","discord","bitcoin","ethereum","paypal","soundcloud","spotify","xbox","telegram"]
	VALID_NAME_REGEX = /\A[a-z0-9\-_@#.]+\z/i #letters, numbers, -, _, @, #, .
	VALID_WEBSITE_REGEX = /https?:\/\/[\S]+/i
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	@socialarray.each do |social|
		validates :"#{social}",
							length: { maximum: 50 },
							format: { with: VALID_NAME_REGEX },
							allow_blank: true,
							allow_nil: true,
							uniqueness: { case_sensitive: false }
	end
	validates :website,
						length: { maximum: 70 },
						format: { with: VALID_WEBSITE_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }

	validates :email,
						length: { maximum: 50 },
						format: { with: VALID_EMAIL_REGEX },
						allow_blank: true,
						allow_nil: true,
						uniqueness: { case_sensitive: false }
end
