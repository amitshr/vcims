class AddColumnToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :image, :text
  end
end
