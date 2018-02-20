class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def rock

    # hash = {
    #   "rock" => "scissors",
    #   "scissors" => "paper",
    #   "paper" => "rock"
    # }
    #
    # if( hash[@hand1] == @hand2 )
    #   return "Player 1 wins with " + @hand1
    # elsif( hash[@hand2] == @hand1 )
    #   return "Player 2 wins with " + @hand2
    # else
    #   return "Draw"
    # end

    case @hand1
    when "rock"
      if @hand2 == "scissors"
        return "Player 1 Wins"
      elsif @hand2 == "paper"
        return "Player 2 Wins"
      else
        return "Drawn Game"
      end

    when "paper"
      if @hand2 == "scissors"
        return "Player 2 Wins"
      elsif @hand2 == "rock"
        return "Player 1 Wins"
      else
        return "Drawn Game"
      end

    when "scissors"
      if @hand2 == "rock"
        return "Player 2 Wins"
      elsif @hand2 == "paper"
        return "Player 1 Wins"
      else
        return "Drawn Game"

    # if @hand1 == "rock" and @hand2 == "scissors"
    #   return "Rock Wins!"
    # else
    #   return "Scissors Wins"
    end
  end
end


end
