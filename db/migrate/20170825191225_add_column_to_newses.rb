class AddColumnToNewses < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :user_id,:bigint
  end
end
