class CreateCenters < ActiveRecord::Migration[5.1]
  def change
    create_table :centers do |t|
    		t.bigint :user_id
    		t.string :center_name
    		t.string :center_incharge
    		t.string :mobile_number
      t.timestamps
    end
  end
end
