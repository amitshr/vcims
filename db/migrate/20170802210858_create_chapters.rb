class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
    	t.bigint :book_id
    	t.string :title
    	t.text :summary
    	t.integer :chapter_number
      t.timestamps
    end
  end
end
