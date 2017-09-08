class CreateStudentStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_statuses do |t|
        t.bigint :user_id
        t.bigint :batch_id
      t.timestamps
    end
  end
end
