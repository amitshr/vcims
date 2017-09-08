class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
            t.string :registration_number
            t.date :registration_date
            t.string :student_name
            t.string :email
            t.string :center
            t.string :course
      t.timestamps
    end
  end
end
