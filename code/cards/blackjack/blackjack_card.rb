

require '/Users/rails/Desktop/11/TIY-Assignments/code/cards/card'

class Blackjack_Card < Card


	def value
    	if @value.is_a?(Fixnum)
      	@value
    	elsif @value == :ace
      	11
    	else
      	10
    	end
  	end
 end
