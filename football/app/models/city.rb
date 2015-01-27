class City < ActiveRecord::Base
	belongs_to :state

	def fastest_growing
	end

	def shrinking
	end
end