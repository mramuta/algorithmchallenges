# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  board = board.map{|row| row.split('')}
  return false if contains_duplicate(board[0])
  return false if contains_duplicate(board[1])
  return false if contains_duplicate(board[2])
  return false if contains_duplicate(board[3])
  return false if contains_duplicate(board[4])
  return false if contains_duplicate(board[5])
  return false if contains_duplicate(board[6])
  return false if contains_duplicate(board[7])
  return false if contains_duplicate(board[8])
  return false if contains_duplicate(board[0][0..2] + board[1][0..2] + board[2][0..2])
  return false if contains_duplicate(board[0][3..5] + board[1][3..5] + board[2][3..5])
  return false if contains_duplicate(board[0][6..8] + board[1][6..8] + board[2][6..8])
  return false if contains_duplicate(board[3][0..2] + board[4][0..2] + board[5][0..2])
  return false if contains_duplicate(board[3][3..5] + board[4][3..5] + board[5][3..5])
  return false if contains_duplicate(board[3][6..8] + board[4][6..8] + board[5][6..8])
  return false if contains_duplicate(board[6][0..2] + board[7][0..2] + board[8][0..2])
  return false if contains_duplicate(board[6][3..5] + board[7][3..5] + board[8][3..5])
  return false if contains_duplicate(board[6][6..8] + board[7][6..8] + board[8][6..8])
  board = board.transpose
  return false if contains_duplicate(board[0])
  return false if contains_duplicate(board[1])
  return false if contains_duplicate(board[2])
  return false if contains_duplicate(board[3])
  return false if contains_duplicate(board[4])
  return false if contains_duplicate(board[5])
  return false if contains_duplicate(board[6])
  return false if contains_duplicate(board[7])
  return false if contains_duplicate(board[8])
  true
end

def contains_duplicate(arr)
  arr = arr - ['.']
  arr.uniq.length != arr.length
end



# [".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]
p is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"])
# should be false
p is_valid_sudoku(["....5..1.",".4.3.....",".....3..1","8......2.","..2.7....",".15......",".....2...",".2.9.....","..4......"])
#should be false
p is_valid_sudoku(["..4...63.",".........","5......9.","...56....","4.3.....1","...7.....","...5.....",".........","........."])

require 'benchmark'

n = 500
Benchmark.bm(7) do |x|
  x.report("for:")   { for i in 1..n; is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]); end }
  x.report("times:") { n.times do   ; is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]); end }
  x.report("upto:")  { 1.upto(n) do ; is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"]); end }
end

test_arr = ['.','.','4','.','.','.','6','3','.']

p 'contains_duplicate'
n = 50000
Benchmark.bm(7) do |x|
  x.report("for:")   { for i in 1..n; contains_duplicate(test_arr); end }
  x.report("times:") { n.times do   ; contains_duplicate(test_arr); end }
  x.report("upto:")  { 1.upto(n) do ; contains_duplicate(test_arr); end }
end


board = [".87654321","2........","3........","4........","5........","6........","7........","8........","9........"].map{|row| row.split('')}

p 'add arr'
n = 50000
Benchmark.bm(7) do |x|
  x.report("for:")   { for i in 1..n; board[0][0..2] + board[0 + 1][0..2] + board[0 + 2][0..2]; end }
  x.report("times:") { n.times do   ; board[0][0..2] + board[0 + 1][0..2] + board[0 + 2][0..2]; end }
  x.report("upto:")  { 1.upto(n) do ; board[0][0..2] + board[0 + 1][0..2] + board[0 + 2][0..2]; end }
end

