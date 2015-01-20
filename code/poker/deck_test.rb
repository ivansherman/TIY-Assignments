require 'minitest/autorun'
require './deck'


class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
	end

	def test_face_card_displays_its_suit_and_value
		@Face_card = Card.new("jack", :spades)
		assert_equal "King of Spades", @Face_card.display
	end

	def test_deck_has_52_cards
		assert_equal 52, @deck.size
	end

	def test_deck_can_deal_and_cards_are_removed_from_deck
		cards = @deck.deal(3)
		assert_equal 49, @deck.size
	end

end
	