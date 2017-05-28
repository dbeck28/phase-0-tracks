# The game should:
  # Take a word and set it as the answer

require_relative 'game'

describe Game do
  let(:game) { Game.new }

  it "takes a word and sets it as the answer" do
    expect(Game.new.answer("green")).to eq "green"
  end
end