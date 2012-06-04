class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
