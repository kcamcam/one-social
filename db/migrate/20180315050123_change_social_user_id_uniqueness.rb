class ChangeSocialUserIdUniqueness < ActiveRecord::Migration[5.1]
  def change
    change_column :social_media, :user_id, :string, unique: true
  end
end
