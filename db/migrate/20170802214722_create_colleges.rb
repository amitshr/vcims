class CreateColleges < ActiveRecord::Migration[5.1]
  def change
    create_table :colleges do |t|
    	t.string :college_name
    	t.string :city
    	t.string :state
        t.bigint :university_id
        # for e.g law college etc.
        t.string :college_type
        t.string :contact_number
        # for girls boys coedu
        t.string :education_mode
      t.timestamps
    end
  end
end
