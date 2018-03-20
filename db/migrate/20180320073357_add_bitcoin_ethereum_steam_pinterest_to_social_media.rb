class AddBitcoinEthereumSteamPinterestToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :bitcoin, :string
    add_column :social_media, :ethereum, :string
    add_column :social_media, :steam, :string
    add_column :social_media, :pinterest, :string
  end
end
