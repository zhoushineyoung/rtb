class Createbids < ActiveRecord::Migration
  def up
  	create_table :bids do |t|
  		t.integer :amount
    	t.references :ad
    	t.references :user
      	t.timestamps
  	end
  end

  def down
  	drop_table :bids
  end
end
