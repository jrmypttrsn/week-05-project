require_relative  "../test_helper"
 
 class EpisodeTest < Minitest::Test
   
   def test_valid_at_creation
     e = Episode.new(date: "02/03/2015", description: "The Return of Spike! Tom chats 
     	with Gregg Turkington & Tim Heidecker from Adult Swim's On Cinema. Darren From 
     	Work talks about the Newbridge Comedy Awards.")
     assert(e.valid?, "should be valid with a date and a description")
   end

   def test_invalid_without_date
     e = Episode.new(date: "02/03/2015", description: "The Return of Spike! Tom chats 
     	with Gregg Turkington & Tim Heidecker from Adult Swim's On Cinema. Darren From 
     	Work talks about the Newbridge Comedy Awards.")
     assert(e.valid?, "should be valid with a date and a description")

     e.date = nil
     refute(e.valid?, "should be invalid without a date")
   end

   def test_invalid_without_description
     e = Episode.new(date: "02/03/2015", description: "The Return of Spike! Tom chats 
     	with Gregg Turkington & Tim Heidecker from Adult Swim's On Cinema. Darren From 
     	Work talks about the Newbridge Comedy Awards.")
     assert(e.valid?, "should be valid with a date and a description")

     e.description = nil
     refute(e.valid?, "should be invalid without a description")
   end
 end