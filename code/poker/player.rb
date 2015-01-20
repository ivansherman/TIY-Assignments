require './card'
class Player


	attr_accessor :hand
	include Comparable


	def initialize(cards = [])
		@hand = cards
	end

	def display
		"#{card_display}"
	end

	def card_display
		@hand.map{ |card| card.display }.join (', ')
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
		card_values = @hand.collect{|card| card.value}
		card_values.uniq.length == 1		
	end

	def has_flush?
		card_suits = @hand.collect{|card| card.suit}
		card_suits.uniq.length == 1
	end