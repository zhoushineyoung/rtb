class CreateDuration < ActiveRecord::Migration
  def up
    create_table :durations do |t|
    	t.string :month
    end
  end

  def down
  	drop_table :durations
  end
end
