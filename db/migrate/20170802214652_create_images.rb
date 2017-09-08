class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
    		t.string :description
    		t.integer :size
      t.timestamps
    end
  end
end
