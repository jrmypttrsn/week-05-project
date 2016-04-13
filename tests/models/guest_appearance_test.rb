require_relative  "../test_helper"
 
 class GuestAppearanceTest < Minitest::Test
   
   def test_valid_at_creation
     g = GuestAppearance.new(date: "02/03/2015")
     assert(g.valid?, "should be valid with a date")
   end

   def test_invalid_without_date
     g = GuestAppearance.new(date: "02/03/2015")
     assert(g.valid?, "should be valid with a date and a description")

     g.date = nil
     refute(g.valid?, "should be invalid without a date")
   end
   
 end