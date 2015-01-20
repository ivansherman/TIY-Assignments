require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

  def setup
    @card = Card.new(2, :hearts)
    @Face_card = Card.new("jack", :spades)
  end

  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_jack_is_has_value
    assert 10, @Face_card.value
  end

  def test_face_card_jack_is_less_than_queen
    queen_card = Card.new("queen", :hearts)
    assert_equal true, @Face_card.value < queen_card.value
  end

  def test_ace_is_has_value
    assert 13, Card.new("ace", :spades)
  end

  def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_face_card_displays_its_suit_and_value
    assert_equal "Jack of Spades", @Face_card.display
  end

end
