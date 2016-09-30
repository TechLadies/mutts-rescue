class Location < ApplicationRecord

	#validate name
	validates :name, presence: true, length: { maximum: 255 }

	#validate address
	validates :address, presence: true

	#validate location_type
	validates :location_type, presence: true, inclusion: { in: %w(MR\ Facility Foster\ Home),
    message: "'%{value}' is not a valid location type. Please enter 'MR Facility' or 'Foster Home'" }


end
