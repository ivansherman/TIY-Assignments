require 'minitest/autorun'
require './player'
require './card'


class PlayerTest < MiniTest::Unit::TestCase

	def setup
		@hand = [Card.new(2, :spades), Card.new("jack", :hearts), Card.new(7, :spades)]
		@player = Player.new(cards)
	end		

	def test_player_displays_hand
		assert_equal " has 2 of Spades, Jack of Hearts, 7 of Spades", @player.display
	end

	def test_player_hand_can_have_unique_cards
		assert @player.has_no_matching_cards?
	end

	def test_player_hand_has_high_card
		assert_equal 10, @player.high_card.value
	end

	def test_player_hand_has_a_pair
		pair_hand = Player.new([Card.new(10, :spades), Card.new(10, :hearts), Card.new(5, :spades)])
		assert pair_hand.has_pair?
	end

	def test_player_hand_has_3_cards_of_the_same_suit
		hand_with_flush = Player.new([Card.new(10, :spades), Card.new(9, :spades), Card.new(5, :spades)])
		assert hand_with_flush.has_flush?
	end


	def test_player_hand_has_three_of_a_kind
		hand_with_three_of_a_kind = Player.new([Card.new("jack", :diamond), Card.new("jack", :spades), Card.new("jack", :hearts)])
		assert hand_with_three_of_a_kind.has_3_of_a_kind?
	end

	def test_player_hand_has_straight_flush
		hand_with_straight_flush = Player.new([Card.new("jack", :spades), Card.new(:queen, :spades), Card.new(10, :spades)])
		assert hand_with_straight_flush.has_straight_flush?
	end

end