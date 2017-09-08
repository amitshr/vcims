class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
    	t.string :title 
    	t.text :summary
    	t.bigint :isbn
    	t.string :author
    	t.bigint :subject_id
    	t.bigint :klass_id
    	t.bigint :board_id
      t.bigint :image_id
      t.timestamps
    end
  end
end
