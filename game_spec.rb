require 'rspec'
require_relative 'game'
require_relative 'player'

describe Game do

  it 'decrements the number of guesses after a guess' do

    g = Game.new
    p = Player.new

    g.prompt_player_for_input
    p.makes_a_guess('A')

    expect(p.guesses_left).to eq 4
  end

  it 'knows whether or not the guess was correct'



end