class AddColumnToImage < ActiveRecord::Migration[5.1]
  def change
    mount_uploader :images, :image, ImageUploader
  end
end
