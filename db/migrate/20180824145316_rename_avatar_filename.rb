class RenameAvatarFilename < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :avatar_Filename, :avatar
  end
end
