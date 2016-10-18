class Sponsorship < ApplicationRecord

#validate people_id
  validates :people_id, presence: true

  #validate dog_id
  validates :dog_id, presence: true

  #validate start date
  validates :date_start, presence: true

  #validate frequency
  validates :frequency, presence: true, inclusion: { in: %w(weekly monthly quarterly),
                                                           message: "'%{value}' is not a valid status. Please enter 'weekly', 'monthly' or 'quarterly' " }

  belongs_to :dog
  belongs_to :person

end
