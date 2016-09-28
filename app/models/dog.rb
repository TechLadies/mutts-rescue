class Dog < ApplicationRecord

	#validate name
	validates :name, presence: true, length: { maximum: 255 }

	#validate gender
	validates :gender, presence: true, inclusion: { in: %w(male female),
    message: "'%{value}' is not a valid gender. Please enter 'male' or 'female'" }
	
	#validate date of birth
	validates :born_on, presence: true
	
	#validate adoption status
	validates :adoption_status, presence: true, inclusion: { in: %w(adopted looking\ for\ adoption),
    message: "'%{value}' is not a valid status. Please enter 'adopted' or 'looking for adoption' " }

end
