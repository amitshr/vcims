class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
    	t.bigint :teacher_id
        t.string :organization_name
        t.date :from 
        t.date :to
        # status for working or non working
        t.binary :status
      t.timestamps
    end
  end
end
