require_relative 'spec_helper'

describe Deck do
  let(:deck) { Deck.new }

  describe '#size' do
    it 'returns the amount of cards in the deck' do
      assert_equal(52, deck.size)
    end
  end

  describe '#draw' do
    describe 'when no param is given' do
      it 'returns a list containing the last card from the deck' do
        last = deck.cards.last
        assert_equal([last], deck.draw)
      end
    end

    describe 'when a param is given' do
      it 'returns a list containing the last given number of cards from the deck' do
        last = deck.cards.last(5)
        assert_equal(last, deck.draw(5))
      end
    end
  end

  describe '#shuffle!' do
    it 'returns the list of cards in a different order' do
      deck.shuffle!

      assert(Deck.new.cards != deck.cards)
    end
  end

  describe '#reset!' do
    before do
      deck.shuffle!
    end

    it 'returns the deck to its original state' do
      deck.reset!

      assert_equal(Deck.new.cards, deck.cards)
    end
  end
end
