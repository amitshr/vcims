class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
    	t.string :email
    	t.string :mobile_number
    	t.string :line1
    	t.string :line2
    	t.string :city
    	t.string :state
    	t.text :question
    	t.string :reply
    	t.string :status
      t.timestamps
    end
  end
end
