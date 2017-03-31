require 'deck/card'

class Deck
  SUITS = [:spades, :clubs, :hearts, :diamonds]
  RANKS = (1..13)

  attr_reader :cards

  def initialize
    reset!
  end

  # Returns the size of the deck
  def size
    cards.size
  end

  # Draws last n cards from the deck
  # @param [Integer] Amount of cards to draw from the deck
  # @return [Array<Card>]
  def draw(amount = 1)
    cards.pop(amount)
  end

  # Returns the cards of the deck in a different order
  def shuffle!
    cards.shuffle!
  end

  # Resets the deck to its initial state
  def reset!
    @cards = load_cards
  end

  private

  def load_cards
    cards = []
    SUITS.flat_map do |suit|
      RANKS.map do |rank|
        cards << Card.new(suit, rank)
      end
    end

    cards
  end
end
