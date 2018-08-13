class AddPersistenceTokenToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :persistence_token, :string
    add_index :users, :email, unique: true
  end
end
