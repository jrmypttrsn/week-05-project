require_relative  "../test_helper"
 
 class CallerAppearanceTest < Minitest::Test
   
   def test_valid_at_creation
     c = CallerAppearance.new(date: "02/03/2015")
     assert(c.valid?, "should be valid with a date")
   end

   def test_invalid_without_date
     c = CallerAppearance.new(date: "02/03/2015")
     assert(c.valid?, "should be valid with a date and a description")

     c.date = nil
     refute(c.valid?, "should be invalid without a date")
   end

 end