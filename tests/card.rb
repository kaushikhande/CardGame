require 'minitest/autorun'
require '../card'

class CardTest < Minitest::Test
  def test_create_card
    card = Card.new('1', 'S')
    assert card.rank == "1" && card.suit == 'S'
  end
end
