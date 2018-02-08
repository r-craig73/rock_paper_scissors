class RPS

  def initialize(game)
    #!/usr/bin/env ruby
    puts "Player 1, pick your item: rock, paper or scissors"
    game = gets.chomp
    @game = game
  end

  def wins(player1, player2)
    player1 = @game
    if ((player1 == "rock") & (player2 == "scissors"))
      "player 1 wins"
    elsif ((player1 == "paper") & (player2 == "rock"))
      "player 1 wins"
    elsif ((player1 == "scissors") & (player2 == "paper"))
      "player 1 wins"
    elsif (player1 == player2)
      "it's a tie"
    else
      "player 2 wins"
    end
  end
end
