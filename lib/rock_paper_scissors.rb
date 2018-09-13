class RockPaperScissors
  def initialize(p1, p2)
    #!/usr/bin/env ruby
    # puts 'Player 1, pick your item: rock, paper or scissors'
    # game = gets.chomp
    @p1 = p1
    @p2 = p2
  end

  def wins?(player1, player2)
    player1 = @p1
    player2 = @p2
    # major_objects = ['rock', 'paper', 'scissors']
    # player2 = major_objects.sample
    if (player1 == 'rock') & (player2 == 'scissors') | (player1 == 'paper') & (player2 == 'rock') | (player1 == 'scissors') & (player2 == 'paper')
      true
    elsif (player1 == 'scissors') & (player2 == 'rock') | (player1 == 'rock') & (player2 == 'paper') | (player1 == 'paper') & (player2 == 'scissors')
      false
    else
      'tie'
    end
  end
end
