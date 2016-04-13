class CreateEpisodesTable < ActiveRecord::Migration
   def change
     create_table :episodes do |t|
       t.datetime :date
       t.text :description
     end

     create_table :caller_appearances do |t|
       t.datetime :date
     end

     create_table :guest_appearances do |t|
       t.datetime :date
     end
   end
 end