class Card

  
attr_reader :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  @face = {
    '2' =>  2,
    '3' =>  3,
    '4' =>  4,
    '5' =>  5,
    '6' =>  6,
    '7' =>  7,
    '8' =>  8,
    '9' =>  9,
    "jack" => 10,
    "queen" => 11,
    "king" => 12,
    "ace" => 13,
    }

  def value
    if @value.is_a?(Fixnum)
      @value
    elsif @value == "jack"
      10
    elsif @value == "queen"
      11
    elsif @value == "king"
      12
    elsif @value == "ace"
      13
  end
  end

  def display
    "#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
  end
  
end

