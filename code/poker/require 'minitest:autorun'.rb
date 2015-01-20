require 'minitest/autorun'
require './card'

class TestCard < MiniTest::Unit::TestCase


  def setup
  	@card = Card.new( 2, :hearts)
  end


  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_card_is_face_card
    @card = Card.new( :jack, :hearts)
    assert_equal :jack, @card.face_card
  end


=begin
 def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_face_card_valued_at_10
    card = Card.new( "K", :diamonds)
    assert_equal 10, card.value
  end

  def test_ace_valued_at_11
    ace = Card.new("A", :spades)
    assert_equal 11, ace.value
  end

  def test_numbered_card_displays_its_suit_and_value
  	assert_equal "2 of hearts", @card.display
  end
  
  def test_face_card_displays_its_suit_and_value
  	king_of_diamonds = Card.new("K", :diamonds)
	assert_equal "K of diamonds", king_of_diamonds.display
	end

def show
	return @card("K").display
end
=end

end
