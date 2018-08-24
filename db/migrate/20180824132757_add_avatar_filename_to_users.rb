class AddAvatarFilenameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_Filename, :string
  end
end
