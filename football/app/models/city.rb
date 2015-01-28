class City < ActiveRecord::Base
	belongs_to :state

	def fastest_growing
		order('population_change DESC').map{|city| city.name}.index[0][0]
	end

	def self.shrinking
		where('population_change < 0').map{|city| city.name}
	end
	end
end