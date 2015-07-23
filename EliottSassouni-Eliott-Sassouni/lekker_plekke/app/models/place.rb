class Place < ActiveRecord::Base
	validates :name, :address, presence: true
	validates :rating, numericality: { greater_than_or_equal_to: 0 }
	validates :rating, numericality: { less_than_or_equal_to: 10 }
end
