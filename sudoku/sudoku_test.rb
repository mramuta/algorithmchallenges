# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.


def block_arr(arr,row,col)
  block = []
  if row < 3
    r1 = 0
  elsif row < 6
    r1 = 3
  else
    r1 = 6
  end
  if col < 3
    c1 = 0
  elsif col < 6
    c1 = 3
  else
    c1 = 6
  end
  i = 0
  while i < 3
    j = 0
    while j < 3
      block << arr[r1 + i][c1 + j]
      j += 1
    end
    i += 1
  end
  block
end

def string_creator(board)
  string_of_board = ''
  board.each do |row|
    string_of_board += row.to_s
  end
  string_of_board
end

def board_creator(string)
  board = []
  new_string = string.split('')
  i = 0
  while i < 9
    board << new_string.slice!(0..8).map!{|number| number.to_i}
    i +=1
  end
  board
end

def vert_search(puzzle, row_index)
  vert_puzzle = puzzle.transpose
  vert_puzzle.each do |element|
    element.reverse
  end
  vert_puzzle[row_index]
end

def extract_horizontal_row(puzzle, row_index)
  puzzle[row_index]
end

def total_pos(hor,vert,block)
  total_pos = [0,1,2,3,4,5,6,7,8,9]
    total_pos.delete_if do |element|
      hor.include?(element) || vert.include?(element) || block.include?(element)
    end
  total_pos
end

def non_pos(arr)
  total_pos = [1,2,3,4,5,6,7,8,9]
  total_pos.delete_if do |element|
      arr.include?(element)
  end
end

def incorrect_arr(arr)
  if arr.sort != [1,2,3,4,5,6,7,8,9]
    return true
  end
  false
end

def pos_all_over_2(arr)
  arr.each do |pos|
    if pos.length <= 1
      return false
    end
  end
  true
end

def no_zeros(puzzle)
  puzzle.each do |row|
    row.each do |element|
      if element == 0
        return false
      end
    end
  end
  true
end

def  insert_when_single_pos(puzzle)
  posibilities_arr = [[0]]
  until no_zeros(puzzle) || pos_all_over_2(posibilities_arr)
    posibilities_arr = []
    row = 0
    while row <= 8
      col = 0
      while col <= 8
        if puzzle[row][col] == 0
          posibilities = total_pos(extract_horizontal_row(puzzle,row),vert_search(puzzle,col),block_arr(puzzle,row,col))
          posibilities_arr << posibilities
          pos_all_over_2(posibilities_arr)
          if posibilities.length == 1
            puzzle[row][col] = posibilities[0]
          end
          return nil if posibilities.length == 0
        end
        col += 1
      end
      row += 1
    end
  end
  posibilities_arr
end

def zero_locations(puzzle)
  zero_coord_arr = []
  row = 0
  while row <= 8
    col = 0
    while col <= 8
      if puzzle[row][col] == 0
        zero_coord_arr << [row,col]
      end
      col += 1
    end
    row += 1
  end
  zero_coord_arr
end

def  insert_guess(puzzle,guess_count)
  guesses = 0
  guess_count = 1 if guess_count > 3
  while guesses <= guess_count
    guess_location = zero_locations(puzzle).sample
    if guess_location
      posibilities = total_pos(extract_horizontal_row(puzzle,guess_location[0]),vert_search(puzzle,guess_location[1]),block_arr(puzzle,guess_location[0],guess_location[1]))
      if posibilities.length > 0
        puzzle[guess_location[0]][guess_location[1]] = posibilities.sample
        guesses += 1
      end
      return nil if posibilities.length == 0
    end
  end
  puzzle
end

def sodoku_brain(string,puzzle = nil,guess_count = 1)
  puzzle ||= board_creator(string)
  return puzzle if solved?(puzzle)
  posibilities_arr = insert_when_single_pos(puzzle)
  return nil if posibilities_arr.nil?
  if pos_all_over_2(posibilities_arr)
      return nil if insert_guess(puzzle,guess_count).nil?
      sodoku_brain(string,puzzle,guess_count += 1)
  end
  return puzzle if solved?(puzzle) == true
end

def solve(board_string)
  answer = nil
  until answer
    answer = sodoku_brain(board_string)
  end
  answer
end


def solved?(board)
  i = 0
  while i <= 8
    hor = extract_horizontal_row(board,i)
    vertical = vert_search(board,i)
    block = block_arr(board,i,i)
    if incorrect_arr(hor) || incorrect_arr(vertical) || incorrect_arr(block)
      return false
    end
    i += 1
  end
  true
end

def pretty_board(board)
  pretty = []
  board.flatten!
  i = 0
  while i < 9
    j = 0
    row = ''
    while j < 9
      row += board[i*9+j].to_s
      j+=1
    end
    pretty << row
    i += 1
  end
  pretty
end 

def solve_sudoku(board)
  board_dupilcate = []
  i = 0
  while i < 9
    board_dupilcate[i] = board[i]
    i += 1
  end
  # p board_dupilcate
  new_board = pretty_board(solve(string_creator(board_dupilcate)))
  i = 0
  while i < 9
    board[i] = new_board[i]
    i += 1
  end
  p board
  return nil
end

board = ["..9748...","7........",".2.1.9...","..7...24.",".64.1.59.",".98...3..","...8.3.2.","........6","...2759.."]
solve_sudoku(board)
