#!/usr/bin/env ruby
require('pry')

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
      'Computer wins'
    elsif player1 == player2
      "How about that? It's a tie!"
    else
      'Oh boy! Did someone dropped their item or misspelled an item?'
    end
  end
end

puts 'It is time to play RPS! Rock, paper or scissors'
puts 'Player 1, pick your item: rock, paper or scissors'
@p1 = gets.chomp

items = %w[rock paper scissors] # similar to ['rock', 'paper', 'scissors']
random_item = items.sample
sleep 2.0
puts "Computer selects #{random_item}"
@p2 = random_item

game = RockPaperScissors.new(@p1, @p2)
the_end = game.wins?(@p1, @p2)
puts "#{the_end}!"
