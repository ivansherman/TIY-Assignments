require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

  def setup
    @card = Card.new(2, :hearts)
  end

  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_face_card_displays_its_suit_and_value
    assert_equal "2 of Hearts", @card.display
  end
end

