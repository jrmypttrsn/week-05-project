class RenameMusicsTableToSongsTable < ActiveRecord::Migration
   def change
     rename_table :musics, :songs
   end
 end