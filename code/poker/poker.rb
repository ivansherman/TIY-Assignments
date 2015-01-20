require './deck'
require './player'

class Poker

	attr_reader :player, :deck, :dealer, :player_hand

	def initialize
		@deck = Deck.new
		@player = Player.new(@deck.deal(3))
		@dealer = Player.new(@deck.deal(3))
	end

	def display_player_hand
		"You have #{@player.display}"
	end

	def display_dealer_hand
		"Dealer has #{@dealer.display}"
	end

	def check_for_winner
		if player.hand_rank > dealer.hand_rank
			"You Win!"
		elsif player.hand_rank < dealer.hand_rank
			"Dealer wins!"
		else
			"It's a Tie!"
		end
	end

end

game = Poker.new
