require_relative "../test_helper.rb"

class SoulTest < Minitest::Test

	def test_valid_at_creation
		s = Soul.new(name: "Eddie", occupation: "Sadism Test Subject")
		assert(s.valid? "Should be valid at creation")
	end

	def test_invalid_without_name
		s = Soul.new(name: "Eddie", occupation: "Sadism Test Subject")
		assert(s.valid? "Should be valid at creation")

		s.name = nil
	 	refute(s.valid?, "should be invalid without a name")
	end

	def test_invalid_without_occupation
		s = Soul.new(name: "Eddie", occupation: "Sadism Test Subject")
		assert(s.valid? "Should be valid at creation")

		s.occupation = nil
	 	refute(s.valid?, "should be invalid without a occupation")
	end
end