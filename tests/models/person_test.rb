require_relative  "../test_helper.rb"
 
class PersonTest < Minitest::Test
   
  def test_valid_at_creation
   p = Person.new(name: "Spike", person_type: "regular")
   assert(p.valid?, "should be valid with a name and a person_type")
  end

  def test_invalid_without_name
   p = Person.new(name: "Spike", person_type: "regular")
   assert(p.valid?, "should be valid with a name and a person_type")

   p.name = nil
   refute(p.valid?, "should be invalid without a name")
  end

  def test_invalid_without_person_type
   p = Person.new(name: "Spike", person_type: "regular")
   assert(p.valid?, "should be valid with a name and a person_type")

   p.person_type = nil
   refute(p.valid?, "should be invalid without a person_type")
  end

end