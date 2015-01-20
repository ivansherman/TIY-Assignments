
require '/Users/rails/Desktop/11/TIY-Assignments/code/cards/card'

class Poker_Card < Card

	def value
		if @value.is_a?(Fixnum)
      	@value
    	elsif @value == :jack
      	11
    	elsif @value == :queen
    	12
    	elsif @value == :king
      	13
    	elsif @value == :ace
      	14
  		end
  	end
 end
