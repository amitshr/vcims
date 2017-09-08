class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
    	    t.string :test_code
    	    t.text :note
    	    t.bigint :course_id
    		t.string :test_type
    		t.text   :content
    		t.integer :marks
    		t.integer :time_duration
      t.timestamps
    end
  end
end
