class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :web_id
      t.string :location
      t.integer :price, limit: 2
      t.integer :size, limit: 2
      t.text :blurb
    end
  end
end
