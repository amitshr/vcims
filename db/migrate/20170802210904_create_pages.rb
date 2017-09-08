class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
    		t.bigint :chapter_id
    		t.string :title
    		t.string :sub_title
    		t.string :page_number
    		t.text :content
        t.bigint :image_id
      t.timestamps
    end
  end
end
