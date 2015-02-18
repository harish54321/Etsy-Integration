class AddUserIdToRequestTokens < ActiveRecord::Migration
  def change
    add_column :request_tokens, :user_id, :integer
  end
end
