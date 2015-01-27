class City < ActiveRecord::Base
	belongs_to :state

	def fastest_growing
		cities.order('population_change DESC').index[0][0]
	end

	def shrinking
		order(:change)
	end
end