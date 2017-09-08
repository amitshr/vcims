class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
    	t.string :school_name
    	t.string :city
    	t.string :state
        t.bigint :board_id
        # for sen sec or high school type
        t.string :school_type
        t.string :contact_number
      t.timestamps
    end
  end
end
