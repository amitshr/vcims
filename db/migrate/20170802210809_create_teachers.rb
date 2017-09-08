class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
    		t.bigint :user_id
    		t.string :teacher_name
    		t.binary :gender
    		t.string :mobile_number
    		t.date   :birth_date
    		t.string :birth_city
    		t.date   :joining_date
    	    t.integer :salary
    		t.bigint :image_id
        t.string :marital_status
      t.timestamps
    end
  end
end
