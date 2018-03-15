class ModifySocialUserIdIndexType < ActiveRecord::Migration[5.1]
  def change
    remove_column :social_media, :user_id
  end
end
