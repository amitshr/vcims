class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.bigint :user_id
    	t.string :student_name
    	t.string :father_name
    	t.string :mother_name
    	t.binary :gender
    	t.date   :birth_date
    	t.string :birth_city
    	t.string :mobile_number
    	t.date   :admission_date
    	t.bigint :image_id
    	
      t.timestamps
    end
  end
end
