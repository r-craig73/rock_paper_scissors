class RPS

  def initialize(game)
    #!/usr/bin/env ruby
    puts "Player 1, pick your item: rock, paper or scissors"
    game = gets.chomp
    @game = game
  end

  def wins?(player1, player2)
    player1 = @game
    ((player1 == "rock") & (player2 == "scissors")) | ((player1 == "paper") & (player2 == "rock")) | ((player1 == "scissors") & (player2 == "paper"))
  end

  def ties?(player1, player2)
    player = @game
    ((player1 == "rock") & (player2 == "rock")) | ((player1 == "paper") & (player2 == "paper")) | ((player1 == "scissors") & (player2 == "scissors"))
  end

  def losses?(player1, player2)
    player1 = @game
    ((player1 == "rock") & (player2 == "paper")) | ((player1 == "paper") & (player2 == "scissors")) | ((player1 == "scissors") & (player2 == "rock"))
  end

end
