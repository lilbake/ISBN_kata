require 'minitest/autorun'

require_relative "isbn_program.rb"

class ISBNVerify <Minitest::Test

	def test_isbn_string_length_other_than_10_or_13_false
		assert_equal(false, length_of_isbn("97804700590291"))
		assert_equal(false, length_of_isbn("04719586971"))
		assert_equal(false, length_of_isbn(""))
	end

	def test_isbn_string_length_other_than_10_or_13_true
		assert_equal(true, length_of_isbn("9780470059029"))
		assert_equal(true, length_of_isbn("0471958697"))
	end

	def test_for_no_dashes_or_spaces
		assert_equal("9780470059029", remove_dashes_spaces("978-047-005-9029"))
		assert_equal("9780470059029", remove_dashes_spaces("978 047 005 9029"))		
	end

end
