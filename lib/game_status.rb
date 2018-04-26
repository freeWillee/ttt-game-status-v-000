# Helper Method

require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle row
  [2,5,8], #Right row
  [0,4,8], #Back-slash diagonal
  [6,4,2] #Forward-slash diagonal
]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle row
  [2,5,8], #Right row
  [0,4,8], #Back-slash diagonal
  [6,4,2] #Forward-slash diagonal
]

def won?(board)
  #iterate though the constant, WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_combo|
    #Define index position on 'board' to be tested;
    index_1 = win_combo[0]
    index_2 = win_combo[1]
    index_3 = win_combo[2]

    # assign win_combo indices
    pos_1 = board[index_1]
    pos_2 = board[index_2]
    pos_3 = board[index_3]

    # test to see if win_combo is on the 'board'
    if (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") ||
      (pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
      # return the win_combo array if true and break out of the loop and method
      return win_combo
    end
  end
  # if there are no win_combinations, then return false and break out of the method
  return false
end

def full?(board)
  #The #full? method should accept a board and return true if every element in the board contains either an "X" or an "O".
  board.all? do |position|
    position == "X" || position == "O"
  end
end
