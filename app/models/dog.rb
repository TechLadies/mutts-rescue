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

  #scope :gender, -> (gender) { where("LOWER(gender) like LOWER(?)", "#{gender}%")}
  
  scope :for_adoption, -> {where(adoption_status: "looking for adoption")}
  scope :is_hdb_approved, -> { where(is_hdb_approved: true) }  
  scope :female, -> { where(gender: 'female') }
  scope :male, -> {where(gender: 'male')}
end
