class ChangeDataTypeForEpisodesDateColumn < ActiveRecord::Migration
	def change
		change_table :episodes do |t|  
	  t.change :date, :date
		end
	end
end