class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
    	t.bigint :center_id
    	t.integer :seats
    	t.integer :room_number
      t.timestamps
    end
  end
end
