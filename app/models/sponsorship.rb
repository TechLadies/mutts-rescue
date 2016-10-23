class Sponsorship < ApplicationRecord
	
  #validate person_id
  validates :person_id, presence: true

  #validate dog_id
  validates :dog_id, presence: true

  #validate date
  validates :sponsor_until_date, presence: true

  #validate frequency
  validates :type, presence: true, inclusion: { in: %w(once monthly),
                                                           message: "'%{value}' is not a valid status. Please enter 'once' or 'monthly' " }

  belongs_to :dog
  belongs_to :person


end
