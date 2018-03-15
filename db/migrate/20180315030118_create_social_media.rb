class CreateSocialMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :social_media do |t|
      t.string :twitter
      t.string :github
      t.string :instagram
      t.string :youtube
      t.string :facebook

      t.timestamps
    end
  end
end
