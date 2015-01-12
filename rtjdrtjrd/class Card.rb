class Card

  attr_reader :suit, :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

def value
    return 10 if ["J", "Q", "K"].include?(@value)
    return 11 if @value == "A"
    return @value
  end

  def display
    "#{@value.to_s} of #{suit.to_s}"
  end

  def card_display
    @hand.map{|card| card.display }
  end


end




