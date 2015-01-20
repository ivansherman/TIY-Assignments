require './card'
class Player


	attr_accessor :hand
	include Comparable


	def initialize(cards = [])
		@hand = cards
	end

	def card_display
		@hand.collect{ |card| card.display }.join (', ')
	end

	def card_values
		@hand.collect{|card| card.value}
	end

	def high_card
		@hand.max_by{|card| card.value}
	end

	def has_no_matching_cards?
		card_values = @hand.collect{|card| card.value}
		unique_values = card_values.uniq
		card_values.length == unique_values.length
	end

	def has_pair?
		card_values = @hand.collect{|card| card.value}
		card_values.uniq.length == 2		
	end

	def has_3_of_a_kind?
		card_values.uniq.length == 1		
	end

	def has_flush?
		card_suits = @hand.collect{|card| card.suit}
		card_suits.uniq.length == 1
	end

	def has_straight
		sorted_values = card_values.sort
		sorted_values[2] - sorted_values[0] == 2 && has_no_matching_cards?
	end

	def straight_flush
		self.has_straight? && self.has_flush?
	end

end