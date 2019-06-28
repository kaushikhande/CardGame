class Game
  require './deck_cards'
  attr_accessor :cards, :discard_card
  def initialize(options)
     @dc_instance = DeckCards.new
     @cards = @dc_instance.deck_cards
     @discard_card = @cards.pop
  end

  def decide_winner
    rand(2)
  end

  def arrange_cards
    
  end
end
