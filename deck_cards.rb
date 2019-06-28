class DeckCards
  require './card'
  SUITS = %w{ H S D C }
  RANKS = %w{ 1 2 3 4 5 6 7 8 9 10 11 12 13 }
  attr_accessor :deck_cards

  def initialize
    @deck_cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck_cards << Card.new(rank, suit)
      end
    end
    shuffle_cards
  end

  def shuffle_cards
    @deck_cards = @deck_cards.shuffle
  end
end
