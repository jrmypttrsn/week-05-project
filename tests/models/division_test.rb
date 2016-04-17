require_relative "../test_helper.rb"

class DivisionTest < Minitest::Test

	def test_valid_at_creation
		v = Division.new(name: "Soul Recruitment", circle_level: "Limbo")
		assert(v.valid? "Should be valid at creation")
	end

	def test_invalid_without_name
		v = Division.new(name: "Soul Recruitment", circle_level: "Limbo")
		assert(v.valid? "Should be valid at creation")

		refute(v.valid? "should be invalid without name")
	end

	def test_invalid_without_circle_level
		v = Division.new(name: "Soul Recruitment", circle_level: "Limbo")
		assert.(v.valid? "Should be valid at creation")

		refute.(v.valid? "should be invalid without circle level")
	end
end