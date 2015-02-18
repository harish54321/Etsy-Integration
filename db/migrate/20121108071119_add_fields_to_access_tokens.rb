class AddFieldsToAccessTokens < ActiveRecord::Migration
  def change
    add_column :access_tokens, :enable_auto_renew, :boolean, :default => false
    add_column :access_tokens, :renew_every_x_minutes, :integer, :default => 20
  end
end
