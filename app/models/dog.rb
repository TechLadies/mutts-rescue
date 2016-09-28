class Dog < ApplicationRecord

	validates :name, presence: true
	validates :gender, presence: true
	validates :born_on, presence: true
	validates :adoption_status, presence: true

end
