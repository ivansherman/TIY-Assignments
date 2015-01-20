require 'minitest/autorun'
require './blackjack_card'

class BackjackCard < MiniTest::Unit::TestCase

  def setup
    @card = Blackjack_Card.new(2, :hearts)
  end

  def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_face_card_valued_at_10
    face_card = Blackjack_Card.new(:jack, :spades)
    assert_equal 10, face_card.value
  end

    def test_ace_card_valued_at_10
    face_card = Blackjack_Card.new(:ace, :spades)
    assert_equal 11, face_card.value
  end

  def test_face_card_displays_suit_and_face_value
    jack_of_clubs = Blackjack_Card.new(:jack, :clubs)
    assert_equal "Jack of Clubs", jack_of_clubs.display
  end
end