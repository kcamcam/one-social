class AddIndexBackIntoSocialMediaUser < ActiveRecord::Migration[5.1]
  def change
    add_index :social_media, :user_id, unique: true
  end
end
