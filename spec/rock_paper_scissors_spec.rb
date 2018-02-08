require('rspec')
require('pry')
require('rock_paper_scissors')

describe('#rock_paper_scissors') do
  it("returns a player 1 win if rock is the object and scissors is the argument") do
    game = RPS.new("rock")
    expect(game.wins("rock", "scissors")).to(eq("player 1 wins"))
  end
  it("returns a player 1 win if paper is the object and rock is the argument") do
    game = RPS.new("paper")
    expect(game.wins("paper", "rock")).to(eq("player 1 wins"))
  end
  it("returns a player 1 win if scissors is the object and paper is the argument") do
    game = RPS.new("scissors")
    expect(game.wins("scissors", "paper")).to(eq("player 1 wins"))
  end
  it("returns a tie if player 1 scissors matche the object and argument") do
    game = RPS.new("scissors")
    expect(game.wins("scissors", "scissors")).to(eq("it's a tie"))
  end
  it("returns a player 2 win if rock is the object and paper is the argument") do
    game = RPS.new("rock")
    expect(game.wins("rock", "paper")).to(eq("player 2 wins"))
  end
end
