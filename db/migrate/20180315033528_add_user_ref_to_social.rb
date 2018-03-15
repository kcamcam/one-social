class AddUserRefToSocial < ActiveRecord::Migration[5.1]
  def change
		add_index :social_media, :id
  end
end
