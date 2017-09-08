class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
        t.bigint :batch_id
        t.bigint :test_id
    	t.bigint :center_id 
      t.timestamps
    end
  end
end
