class CreateDemonsSoulsTable < ActiveRecord::Migration
	def change
		create_join_table :demons, :souls
	end
end