class CreateAttendingEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :attending_events do |t|

      t.integer :event_id
      t.integer :user_id



      t.timestamps
    end


    add_index :attending_events, :event_id
    add_index :attending_events, :user_id
    add_index :attending_events, [:event_id, :user_id], unique: true
  end
end
