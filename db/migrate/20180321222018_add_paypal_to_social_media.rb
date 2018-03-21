class AddPaypalToSocialMedia < ActiveRecord::Migration[5.1]
  def change
    add_column :social_media, :paypal, :string
  end
end
