class RenameMusicTableToMusicsTable < ActiveRecord::Migration
   def change
     rename_table :music, :musics
   end
 end