class CreateUniversities < ActiveRecord::Migration[5.1]
  def change
    create_table :universities do |t|
    	t.string :short_name
    	t.string :state
    	t.string :full_name
      t.timestamps
    end
  end
end
