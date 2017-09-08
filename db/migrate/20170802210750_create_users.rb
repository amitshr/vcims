class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
        t.string :email
    	t.string :password
    	t.string :category_id
    	t.boolean :email_verification
    	t.boolean :status
      t.timestamps
    end
  end
end
