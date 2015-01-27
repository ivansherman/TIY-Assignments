class Team < ActiveRecord::Base
	belongs_to :city

	def division_rivals
	end

	def division_leader?
	end

	def division_winner?
	end
end