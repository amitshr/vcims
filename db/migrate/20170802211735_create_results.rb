class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
    		t.integer :student_id
    		t.integer :test_id
    		t.integer :marks_obtained
    		t.string :remark
      t.timestamps
    end
  end
end
