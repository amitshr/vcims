class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
    	t.string :login_name
    	t.string :login_password
      t.timestamps
    end
  end
end
