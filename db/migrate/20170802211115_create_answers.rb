class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
             t.bigint :question_id
             t.text :content
      t.timestamps
    end
  end
end
