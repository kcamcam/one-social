class SocialMedium < ApplicationRecord
	belongs_to :user
	validates_uniqueness_of :user_id
	@socialarray = ["twitter","instagram","youtube","facebook","googleplus","pinterest","snapchat","flickr","tumblr","messenger","medium","reddit","hackernews","github","keybase","devpost","devto","angel","linkedin","steam","origin","twitch","discord","bitcoin","ethereum","paypal"]
	VALID_NAME_REGEX = /\A[a-z0-9\-_@#.]+\z/i #letters, numbers, -, _, @, #, .

	@socialarray.each do |social|
		validates :"#{social}",
							length: { maximum: 50 },
							format: { with: VALID_NAME_REGEX },
							allow_blank: true,
							allow_nil: true,
							uniqueness: { case_sensitive: false }
	end
end
