require "minitest/autorun"
require_relative "csv.rb"

class TestCsv <Minitest::Test
	def test_csv_exist
		assert_equal(true, original_csv)
	end

	def test_new_csv_file_exists
		assert_equal(true, new_csv)
	end
end
