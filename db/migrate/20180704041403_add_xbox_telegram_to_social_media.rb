class AddXboxTelegramToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :xbox, :string
    add_column :social_media, :telegram, :string
  end
end
