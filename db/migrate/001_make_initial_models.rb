class MakeInitialModels < ActiveRecord::Migration
	
	create_table :divisions do |t|
		t.string :name, null: false
		t.string :circle_level, null: false
	end

	create_table :souls do |t|
		t.string :name, null: false
		t.string :occupation, null: false
		t.integer :division_id
	end

	create_table :demons do |t|
		t.string :name, null: false
		t.string :title, null: false
		t.integer :division_id
	end
end