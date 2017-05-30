# The game should:
  # Take a word and set it as the answer

require_relative 'game'

describe Game do
  let(:game) { Game.new }

  it "takes a word and sets it as the answer" do
    expect(Game.new.answer("green")).to eq "green"
  end

  it "counts the amount of guesses and adds to the counter" do
    expect(Game.new.guess_counter("r")).to eq 1
  end

  it "gives an update of the status of guesses" do
    expect(Game.new.rev_update).to eq ""
  end


end