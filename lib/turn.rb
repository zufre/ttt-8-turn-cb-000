def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end


def position_taken?(board, index)
    boardPos = board[index]
  if boardPos === " " || boardPos === "" ||boardPos === nil
    false
  elsif boardPos === "X" || boardPos === "O"
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  else
    if index < 0 || index > 8
      false
    else
      true
    end
  end
end
