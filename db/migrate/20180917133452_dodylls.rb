class Dodylls < ActiveRecord::Migration[5.1]
  def self.up
    create_table :dodylls do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :description, :text
      t.column :location, :string
      t.column :start, :date, :null => false
      t.column :end, :date, :null => false
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :dodylls
  end
end
