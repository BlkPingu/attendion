class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.datetime :time
      t.string :location
      t.string :url
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
