def battleships(board)
	row = 0
	while row < board.length
		col = 0
		while col < board[row].length
			if board[row][col] == '.'
				board[row][col] = nil
			elsif col < board[row].length - 1 && board[row][col] == 'X' && board[row][col + 1] == 'X'
				board[row][col] = nil
			elsif row < board.length - 1 && board[row][col] == 'X' && board[row + 1][col] == 'X'
				board[row][col] = nil
			end
			col += 1
		end
		row += 1
	end
	board.reduce(0){|ships,row| ships + row.compact.length}
end
# [[nil, nil, nil, "X", nil, nil, nil],
#  [nil, nil, nil, nil, nil, nil, nil],
#  [nil, nil, nil, nil, nil, nil, nil],
#  [nil, nil, nil, "X", nil, "X", nil],
#  [nil, "X", nil, nil, nil, nil, nil],
#  [nil, nil, nil, nil, "X", nil, "X"]]
board_1 = [
['.','X','X','X','.','X','.'],
['.','.','.','.','.','X','.'],
['.','X','.','.','.','X','.'],
['.','X','.','X','.','X','.'],
['.','X','.','.','.','.','X'],
['.','.','.','X','X','.','X']
]
p battleships(board_1)