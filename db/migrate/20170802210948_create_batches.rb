class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
            t.string :room_id
            t.string :batch_name
            t.string :course_id
    		t.string :sesion_id
    		t.string :status
    		t.string :filled_seats
    		t.date :staring_date
      t.timestamps
    end
  end
end
