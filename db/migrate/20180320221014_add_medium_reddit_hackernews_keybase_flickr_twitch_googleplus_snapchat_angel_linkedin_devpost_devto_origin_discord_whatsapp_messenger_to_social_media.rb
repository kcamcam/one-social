class AddMediumRedditHackernewsKeybaseFlickrTwitchGoogleplusSnapchatAngelLinkedinDevpostDevtoOriginDiscordWhatsappMessengerToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :medium, :string
    add_column :social_media, :reddit, :string
    add_column :social_media, :hackernews, :string
    add_column :social_media, :keybase, :string
    add_column :social_media, :flickr, :string
    add_column :social_media, :twitch, :string
    add_column :social_media, :googleplus, :string
    add_column :social_media, :snapchat, :string
    add_column :social_media, :angel, :string
    add_column :social_media, :linkedin, :string
    add_column :social_media, :devpost, :string
    add_column :social_media, :devto, :string
    add_column :social_media, :origin, :string
    add_column :social_media, :discord, :string
    add_column :social_media, :whatsapp, :string
    add_column :social_media, :messenger, :string
  end
end
