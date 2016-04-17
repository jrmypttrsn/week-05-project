require_relative "../test_helper.rb"

class DemonTest < Minitest::Test

	def test_valid_at_creation
		d = Demon.new(name: "Gary", title: "Soul Recruiter")
		assert(d.valid? "Should be valid at creation")
	end

	def test_invalid_without_name
		d = Demon.new(name: "Gary", title: "Soul Recruiter")
		assert(d.valid? "Should be valid at creation")

		d.name = nil
	 	refute(d.valid?, "should be invalid without a name")
	end

	def test_invalid_without_title
		d = Demon.new(name: "Gary", title: "Soul Recruiter")
		assert(d.valid? "Should be valid at creation")

		d.title = nil
	 	refute(d.valid?, "should be invalid without a title")
	end
end