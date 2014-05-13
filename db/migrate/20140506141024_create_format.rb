class CreateFormat < ActiveRecord::Migration
  def up
    create_table :formats do |t|
    	t.string :size
    end
  end

  def down
  	drop_table :formats
  end
end
