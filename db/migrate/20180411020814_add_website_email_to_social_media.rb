class AddWebsiteEmailToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :website, :string
    add_column :social_media, :email, :string
  end
end
