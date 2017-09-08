class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
    		t.string :title
    		t.integer :video_length	
    		t.string :source
    		t.integer :transcript
      t.timestamps
    end
  end
end
