class AddSoundcloudSpotifyToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :soundcloud, :string
    add_column :social_media, :spotify, :string
  end
end
