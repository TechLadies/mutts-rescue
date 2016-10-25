class Sponsorship < ApplicationRecord
	
  #validate person_id
  validates :person_id, presence: true

  #validate dog_id
  validates :dog_id, presence: true

  #validate date
  validates :sponsor_until_date, presence: true

  #validate sponsorship type
  TYPE_OPTIONS = %w(monthly once)

  validates :sponsorship_type, :inclusion => {:in => TYPE_OPTIONS}

  belongs_to :dog
  belongs_to :person

   enum sponsorship_type: [ :monthly, :once]


end
