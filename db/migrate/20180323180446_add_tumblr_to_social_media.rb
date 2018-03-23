class AddTumblrToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :tumblr, :string
  end
end
