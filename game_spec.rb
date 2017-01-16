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

  it 'stores the users guesses' do
    g = Game.new
    p = Player.new

    g.prompt_player_for_input
    p.makes_a_guess('d')
    g.prompt_player_for_input
    p.makes_a_guess('F')

    expect(p.all_guesses).to eq ['d', 'F']gi
  end

  it 'will not let the user guess the same letter twice' do
    g = Game.new
    p = Player.new

    g.prompt_player_for_input
    p.makes_a_guess('d')
    g.prompt_player_for_input
    p.makes_a_guess('d')

    expect(p.all_guesses.size).to eq 1
  end

  it 'will show the correct letters when guessed'
  it 'will show the player their previous guesses'

end