# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  board = board.map{|row| row.split('')}
  return false if !valid_arr(board[0][0..2] + board[1][0..2] + board[2][0..2])
  return false if !valid_arr(board[0][3..5] + board[1][3..5] + board[2][3..5])
  return false if !valid_arr(board[0][6..8] + board[1][6..8] + board[2][6..8])
  return false if !valid_arr(board[3][0..2] + board[4][0..2] + board[5][0..2])
  return false if !valid_arr(board[3][3..5] + board[4][3..5] + board[5][3..5])
  return false if !valid_arr(board[3][6..8] + board[4][6..8] + board[5][6..8])
  return false if !valid_arr(board[6][0..2] + board[7][0..2] + board[8][0..2])
  return false if !valid_arr(board[6][3..5] + board[7][3..5] + board[8][3..5])
  return false if !valid_arr(board[6][6..8] + board[7][6..8] + board[8][6..8])
  i = 0
  while i < 9
    return false if !valid_arr(board_col(board,i))
    i += 1
  end
  i = 0
  while i < 9
    return false if !valid_arr(board_row(board,i))
    i += 1
  end
  true
end

def contains_duplicate(arr)
  nums = {}
  arr.each do |element|
    if nums[element] && element != '.'
      return true
    end
    nums[element] = true
  end
  false
end

def valid_arr(arr)
  if contains_duplicate(arr) || !(arr - ['1','2','3','4','5','6','7','8','9','.']).empty?
    return false
  end
  true
end

def board_col(puzzle, row_index)
  vert_puzzle = puzzle.transpose
  vert_puzzle.each do |element|
    element.reverse
  end
  vert_puzzle[row_index]
end

def board_row(puzzle, row_index)
  puzzle[row_index]
end
# [".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]
p is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"])
# should be false
p is_valid_sudoku(["....5..1.",".4.3.....",".....3..1","8......2.","..2.7....",".15......",".....2...",".2.9.....","..4......"])