class Createads < ActiveRecord::Migration
  def up
  	create_table :ads do |t|
  		t.string :name
    	t.text :desc
    	t.integer :baseamount
    	t.integer :amount
    	t.string :address
    	t.datetime :startdate
    	t.datetime :enddate
    	t.references :type
    	t.references :district
    	t.references :duration
    	t.references :grade
    	t.references :format
      	t.timestamps
  	end
  end

  def down
  	drop_table :ads
  end
end
