require 'minitest/autorun'

require_relative "isbn_program.rb"

class ISBNVerify <Minitest::Test

	def test_isbn_string_length_other_than_10_or_13_false
		assert_equal(false, valid_isbn?("97804700590291"))
		assert_equal(false, valid_isbn?("04719586971"))
		assert_equal(false, valid_isbn?(""))
	end

	def test_isbn_string_length_other_than_10_or_13_true
		assert_equal(true, valid_isbn?("9780470059029"))
		assert_equal(true, valid_isbn?("0471958697"))
	end

	def test_for_no_dashes_or_spaces_returns_true
		assert_equal(true, valid_isbn?("978-047-005-9029"))
		assert_equal(true, valid_isbn?("978 047 005 9029"))		
	end

	def test_13_characters_with_non_numerical_returns_false
		assert_equal(false, non_numerical_characters("a78047005a02a"))
	end

	def test_13_character_isbn_with_non_numerical_returns_false
		assert_equal(true, valid_isbn?("a937 8-043a 590-2"))
	end
end
