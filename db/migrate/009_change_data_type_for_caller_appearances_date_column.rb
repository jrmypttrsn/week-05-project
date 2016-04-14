class ChangeDataTypeForCallerAppearancesDateColumn < ActiveRecord::Migration
	def change
		change_table :caller_appearances do |t|  
	  t.change :date, :date
		end
	end
end