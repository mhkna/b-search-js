# objects - card, deck, hand, game

# deck has array of cards
# hand has array of cards
# game has a deck

class Deck
  def initialize
    @cards = build_deck
  end

  def shuffle
  end

  def deal_card
  end

  private

  def build_deck
  end
end

class Card
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end

class Hand
end
