require 'minitest/autorun'

require_relative "isbnkata2.rb"

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

	def test_invalid_13_digit_returns_false
		assert_equal(false, valid_isbn?("4243568790000"))
	end

	def test_convert_string_to_array_characters
		assert_equal(["1","2","3","4","5","6","7"], string_to_array("1234567"))
	end

	def test_multipy_array_by_1_and_3
		assert_equal([1,3,1,3,1,3], multiply_array(["1","1","1","1","1","1"]))
	end

	def test_sum_of_items_in_new_array
		assert_equal(10, sum_of_items([1,2,3,4,]))
	end

	def test_mod_ten_of_the_number
		assert_equal(5, #funtion returns mod 10)
			#subtract the value of ten
end