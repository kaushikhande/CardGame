class Game
  require_relative './deck_cards'
  attr_accessor :cards, :discard_card
  def initialize()
     @dc_instance = DeckCards.new
     @cards = @dc_instance.deck_cards
     @discard_card = @cards.pop
  end

  def decide_winner
    rand(2)
  end

  def arrange_cards
    first_card_with_same_rank_index = get_first_card_with_same_rank
    if is_inside_winner?
      if first_card_with_same_rank_index.odd?
        # swap card to immediate non occurence index
        replace_card_index = find_replace_card_index(first_card_with_same_rank_index)
        swap_winner_card_position_with_next_card_position(cards, first_card_with_same_rank_index, replace_card_index)
      end
    else
      
    end
  end

  def get_first_card_with_same_rank
    # find first occurence of discard card in deck
    first_card_with_same_rank_index = 0
    @cards.each_with_index do |card,index|
      if card.rank == @discard_card.rank
        first_card_with_same_rank_index = index
        break
      end
    end
    first_card_with_same_rank_index.to_i
  end

  def is_inside_winner?
    decide_winner.even? ? true : false
  end

  def find_replace_card_index(first_card_with_same_rank_index)
    @cards[(first_card_with_same_rank_index + 1)..-1].each_with_index do |card, index|
      if card.rank != @discard_card.rank
        return index
      end
    end
  end
end
