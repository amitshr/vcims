class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.bigint :user_id
    	t.string :line1
    	t.string :line2
    	t.string :town
    	t.string :district
      t.string :state
    	t.string :city
    	t.string :country
    	t.string :pincode
    	t.string :landline_number
      t.timestamps
    end
  end
end
