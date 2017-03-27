class Location < ApplicationRecord

	#validate name
	validates :name, presence: true, length: { maximum: 255 }

	#validate address
	validates :address, presence: true

	#validate location_type
	validates :location_type, presence: true, inclusion: { in: ['MR Facility', 'Foster Home', 'Permanent Home'],
    message: "'%{value}' is not a valid location type. Please enter 'MR Facility', 'Foster Home', or 'Permanent Home'" }


end
