class CreateEpisodesSongsTable < ActiveRecord::Migration
	def change
		create_join_table :episodes, :songs
	end
end
