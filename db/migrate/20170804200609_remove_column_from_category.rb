class RemoveColumnFromCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :user_id
  end
end