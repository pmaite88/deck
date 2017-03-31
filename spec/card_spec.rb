require_relative 'spec_helper'

describe Deck::Card do
  let(:diamonds_1) { Deck::Card.new(:diamonds, 1) }
  let(:clubs_2) { Deck::Card.new(:clubs, 2) }
  let(:hearts_3) { Deck::Card.new(:hearts, 3) }
  let(:spades_4) { Deck::Card.new(:spades, 4) }

  describe '#clubs?' do
    it { assert(clubs_2.clubs?) }
  end

  describe '#diamonds?' do
    it { assert(diamonds_1.diamonds?) }
  end

  describe '#hearts?' do
    it { assert(hearts_3.hearts?) }
  end

  describe '#spades?' do
    it { assert(spades_4.spades?) }
  end

  describe '#==' do
    card_1 = Deck::Card.new(:spades, 4)
    card_2 = Deck::Card.new(:spades, 4)

    it { assert_equal(card_1, card_2) }
  end
end
