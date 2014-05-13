class AlterUsers < ActiveRecord::Migration
  def up
    add_reference :users, :role
  end
  
  def down
    drop_table :users
  end
end
