class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
    		t.bigint :teacher_id
    		t.string :degree
    		t.bigint :board_id
    		t.bigint :university_id
    		t.binary :mode
        t.string :year_of_passing
    		t.integer :marks_obtained
    		t.integer :percentage
      t.timestamps
    end
  end
end
