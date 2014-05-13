class AlterUsersTable < ActiveRecord::Migration
  def up
    add_column "users", "email", :string
  end
  
  def down
    drop_table :users
  end
end
