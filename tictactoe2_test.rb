require 'minitest/autorun'
require_relative "tictactoe2.rb"

class TicTacToe < Minitest::Test

	def test_that_game_board_exist
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_board)
	end

	def test_that_marker_changes_to_X_or_O
		assert_equal([1, 2, 3, "X", 5, 6, 7, 8, 9], board_update([1, 2, 3, 4, 5, 6, 7, 8, 9], 3, "X"))
		assert_equal([1, "O", 3, 4, 5, 6, 7, 8, 9], board_update([1, 2, 3, 4, 5, 6, 7, 8, 9], 1, "O"))
	end

	def test_if_space_is_valid_or_invalid
		assert_equal(false, validity_position?(["O", 2, 3, 4, 5, 6, 7, 8, 9], 0, "O"))
		assert_equal(true, validity_position?(["X", 2, 3, 4, 5, 6, 7, 8, 9], 4, "O"))
	end

	def test_that_its_a_win_or_tie
		assert_equal(true, win_lose_tie([1, 2, "X", 4, 5, "X", 7, 8, "X"], [2, 5, 8], "X"))
	end

end