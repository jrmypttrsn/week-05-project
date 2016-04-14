class ChangeDataTypeForGuestAppearancesDateColumn < ActiveRecord::Migration
	def change
		change_table :guest_appearances do |t|  
	  t.change :date, :date
		end
	end
end