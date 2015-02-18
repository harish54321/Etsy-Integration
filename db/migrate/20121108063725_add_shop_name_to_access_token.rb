class AddShopNameToAccessToken < ActiveRecord::Migration
  def change
    add_column :access_tokens, :shop_name, :string
  end
end
