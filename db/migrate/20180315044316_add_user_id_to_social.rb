class AddUserIdToSocial < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :user_id, :string
  end
end
