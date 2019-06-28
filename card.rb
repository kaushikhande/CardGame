class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank, @suit = rank, suit
  end

  def <=>(obj)
    comparison = self.rank <=> obj.rank

    if comparison == 0
      return self.suit <=> obj.suit
    else
      return comparison
    end
  end
end
