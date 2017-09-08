class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
                 t.string :content
                 t.bigint :user_id
                 t.bigint :post_id
                 t.boolean :status
      t.timestamps
    end
  end
end
