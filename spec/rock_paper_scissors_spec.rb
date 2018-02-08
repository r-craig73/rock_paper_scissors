require('rspec')
require('pry')
require('rock_paper_scissors')

describe('#rock_paper_scissors') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new("rock")
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new("paper")
    expect(game.wins?("paper", "rock")).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new("scissors")
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end
  it("returns true if scissors is the object and argument") do
    game = RPS.new("scissors")
    expect(game.ties?("scissors", "scissors")).to(eq(true))
  end
  it("returns true if rock is the object and paper is the argument") do
    game = RPS.new("rock")
    expect(game.losses?("rock", "paper")).to(eq(true))
  end
end
