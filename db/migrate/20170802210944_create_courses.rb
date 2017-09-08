class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
         t.string :course_name
    	   t.bigint :subject_id
    	   t.bigint :klass_id 
         t.string :board_id
    	   t.integer :fee
    	   t.string :duration
    	   t.text :description 
      t.timestamps
    end
  end
end
