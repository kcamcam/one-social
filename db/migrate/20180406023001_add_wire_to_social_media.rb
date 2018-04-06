class AddWireToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :wire, :string
  end
end
