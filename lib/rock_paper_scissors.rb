class RPS

  def initialize(game)
    @game = game
  end

  def wins?(player1, player2)
    player1 = @game
    ((player1 == "rock") & (player2 == "scissors")) | ((player1 == "paper") & (player2 == "rock")) |
    ((player1 == "scissors") & (player2 == "paper"))
  end

end
