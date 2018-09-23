class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :user
      t.string :free
      t.references :dodyll, foreign_key: true

      t.timestamps
    end
  end
end
