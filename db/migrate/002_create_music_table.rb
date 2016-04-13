class CreateMusicTable < ActiveRecord::Migration
   def change
     create_table :music do |t|
       t.string :song
       t.string :artist
       t.string :album
       t.string :record_label
     end
   end
 end