class CreateKlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :klasses do |t|
    		t.string :title
      t.timestamps
    end
  end
end
