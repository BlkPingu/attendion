class CreateDodylls < ActiveRecord::Migration[5.1]
  def change
    create_table :dodylls do |t|

      t.timestamps
    end
  end
end
