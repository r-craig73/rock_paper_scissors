require('rspec')
require('pry')
require('rock_paper_scissors')

describe('rock_paper_scissors') do
  it('selects player 1 if rock is the object and scissors is the argument') do
    game = RockPaperScissors.new('rock', 'scissors')
    expect(game.wins?('rock', 'scissors')).to(eq('Player 1 wins'))
  end
  it('selects player 1 if paper is the object and rock is the argument') do
    game = RockPaperScissors.new('paper', 'rock')
    expect(game.wins?('paper', 'rock')).to(eq('Player 1 wins'))
  end
  it('selects player 1 if scissors is the object and paper is the argument') do
    game = RockPaperScissors.new('scissors', 'paper')
    expect(game.wins?('scissors', 'paper')).to(eq('Player 1 wins'))
  end
  it('returns a tie if player 1 scissors matches the object and argument') do
    game = RockPaperScissors.new('scissors', 'scissors')
    expect(game.wins?('scissors', 'scissors')).to(eq('This is a tie'))
  end
  it('returns a tie if player 1 paper matches the object and argument') do
    game = RockPaperScissors.new('paper', 'paper')
    expect(game.wins?('paper', 'paper')).to(eq('This is a tie'))
  end
  it('returns a tie if player 1 rock matches the object and argument') do
    game = RockPaperScissors.new('rock', 'rock')
    expect(game.wins?('rock', 'rock')).to(eq('This is a tie'))
  end
  it('selects player 2 if rock is the object and paper is the argument') do
    game = RockPaperScissors.new('rock', 'paper')
    expect(game.wins?('rock', 'paper')).to(eq('Player 2 wins'))
  end
  it('selects player 2 if paper is the object and scissors is the argument') do
    game = RockPaperScissors.new('paper', 'scissors')
    expect(game.wins?('paper', 'scissors')).to(eq('Player 2 wins'))
  end
  it('selects player 2 if scissors is the object and rock is the argument') do
    game = RockPaperScissors.new('scissors', 'rock')
    expect(game.wins?('scissors', 'rock')).to(eq('Player 2 wins'))
  end
end
