require 'minitest/autorun'
require_relative '../game'

class GameTest < Minitest::Test
  def test_create_game
    game_instance = Game.new
    assert game_instance.discard_card != nil
  end

  def test_get_first_card
    g = Game.new
    puts index_card = g.get_first_card_with_same_rank
    assert g.discard_card.rank == g.cards[index_card].rank
  end
end
