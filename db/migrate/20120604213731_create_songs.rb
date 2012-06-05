class CreateSongs < ActiveRecord::Migration
  
  def change
    create_table :songs do |t|
      t.integer :user_id  
      t.string :title
      t.has_attached_file :audio
      t.timestamps
    end
  end
  
  def down
    drop_table :songs
  end
end
