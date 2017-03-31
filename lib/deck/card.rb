class Deck
  class Card
    attr_reader :suit, :rank

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end

    def clubs?
      suit == :clubs
    end

    def spades?
      suit == :spades
    end

    def diamonds?
      suit == :diamonds
    end

    def hearts?
      suit == :hearts
    end

    # Used for comparing cards
    def ==(other)
      other.is_a?(Card) && suit == other.suit && rank == other.rank
    end
  end
end
