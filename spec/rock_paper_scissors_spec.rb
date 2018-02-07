require('rspec')
require('pry')
require('rock_paper_scissors')

describe('#rock_paper_scissors') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new("rock")
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
end
