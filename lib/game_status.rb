# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [

  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2],

]

def won?(board)

  WIN_COMBINATIONS.each do | win_combination |
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination

    end
  end
  false
end

def full?(board)

    return board.include?(" ") ? false : true

end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  if  won?(board) || full?(board) || draw?(board)
    return true
  end
end

def winner(board)

  winning = won?(board)

  if winning === false
    return nil
  elsif board[winning[0]] == "X"
    return "X"
  else
    board[winning[0]] == "O"
    return "O"
  end
end
