# has no input amd creates an array
def create_new_board()
	board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
end

# chooses position and changes to an x
def board_update(board, position, marker)
	board[position] = marker
	board
end

# test for validity of the space 
def validity_position?(board, position, marker)
	if board[position] == position + 1
		true
	else
		false
	end
end


#check that you win lose or tie the game
def marker_one_win(board, position, marker)
	if board[2]  && board[5] && board[8] == "X"
		true
	end
end



	
	