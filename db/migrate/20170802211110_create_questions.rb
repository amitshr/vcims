class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.text :content
    	t.bigint :page_id
    	t.integer :question_number
    	t.string :question_type
    	t.bigint :image_id
      t.timestamps
    end
  end
end
