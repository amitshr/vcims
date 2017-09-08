class CreateSesions < ActiveRecord::Migration[5.1]
  def change
    create_table :sesions do |t|
           t.string :title
           t.integer :from
           t.integer :to
      t.timestamps
    end
  end
end
