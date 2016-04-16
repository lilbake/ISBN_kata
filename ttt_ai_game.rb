require_relative "tictactoe_sai.rb"
require_relative "tictactoe_seq_sai.rb"

def play_game (player_1, player_2, board)

	move = player_1[:player_mode].get_move(board)
	board = board_update(board, move -1, player_1[:marker])
	if game_over?(board, player_1[:marker])
		board
	else
		play_game(player_2, player_1, board)
	end
end