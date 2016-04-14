class AddTitleColumnToEpisodes < ActiveRecord::Migration
	def change
		add_column :episodes, :title, :string, default: "No Title"
	end
end