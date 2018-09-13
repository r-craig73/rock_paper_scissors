#!/usr/bin/env ruby
require('pry')

puts 'Player 1, pick your item: rock, paper or scissors'
@p1 = gets.chomp

# items = [rock, paper, scissors]
# random_item = items.sample
puts 'Player 2, pick your item: rock, paper or scissors'
@p2 = gets.chomp

class RockPaperScissors
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def wins?(player1, player2)
    player1 = @p1
    player2 = @p2
    if (player1 == 'rock') & (player2 == 'scissors') | (player1 == 'paper') & (player2 == 'rock') | (player1 == 'scissors') & (player2 == 'paper')
      'Player 1 wins'
    elsif (player1 == 'scissors') & (player2 == 'rock') | (player1 == 'rock') & (player2 == 'paper') | (player1 == 'paper') & (player2 == 'scissors')
      'Player 2 wins'
    else
      'This is a tie'
    end
  end
end

game = RockPaperScissors.new(@p1, @p2)
the_end = game.wins?(@p1, @p2)
puts "#{the_end}!"
