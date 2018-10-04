class AddAppleToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :apple, :string
  end
end
