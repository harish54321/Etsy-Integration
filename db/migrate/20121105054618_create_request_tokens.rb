class CreateRequestTokens < ActiveRecord::Migration
  def change
    create_table :request_tokens do |t|
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
