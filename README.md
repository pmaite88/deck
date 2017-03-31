# Deck Gem

A library for managing a deck of cards.

Get a deck, shuffle it and draw the cards you need for your game!

## Instalation

  To install locally just go to the source directory where you downloaded the gem and do:

```bash
gem install deck-0.0.1.gem
```
## Usage

```ruby
# create a new deck
deck = Deck.new

# shuffle the deck before start playing!
deck.shuffle!

# draw the necessary cards for your game.
cards = deck.draw(10)

# Some fun game stuff occurs here!
...

# Get the cards back into the original deck.
deck.reset!
```

## Available Operations


  - `deck = Deck.new` - Create a new deck with 52 cards

  - `deck.size` - Get the size of the deck

  - `deck.draw` - Draw the last card from the deck

  - `deck.draw(5)` - Draw the last 5 cards from the deck

  - `deck.shuffle!` - Shuffle the order of the cards in the deck

  - `deck.reset!` - Reset the deck to its original state

  - `card = Deck::Card.new(:spades, 4)` - Create a new card

  - `card.spades?` - Check the suit of a card

## Tests

Run tests with `rake test`
