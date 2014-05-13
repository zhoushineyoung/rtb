class CreateGrade < ActiveRecord::Migration
  def up
    create_table :grades do |t|
    	t.string :name
    end
  end

  def down
  	drop_table :grades
  end
end
