class Team < ActiveRecord::Base
	belongs_to :city

	

	def division_leader?
		if teams.order(:"wins").name[0]
			true
		else
			false
	end

	def division_winner?
		
	end
end