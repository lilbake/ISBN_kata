require 'minitest/autorun'

require_relative "isbn_program.rb"

class ISBNVerify <Minitest::Test

	def test_isbn_string_length_other_than_10_or_13_false
		assert_equal(false, length_of_isbn("97804700590291"))
		assert_equal(false, length_of_isbn("04719586971"))
	end
end