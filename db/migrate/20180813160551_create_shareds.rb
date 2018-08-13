class CreateShareds < ActiveRecord::Migration[5.1]
  def change
    create_table :shareds do |t|

      t.timestamps
    end
  end
end
