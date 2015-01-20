class Card

  attr_reader :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def display
    "#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
  end

end