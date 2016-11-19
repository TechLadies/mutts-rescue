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

  scope :for_adoption, -> {where(adoption_status: "looking for adoption")}
  scope :adopted, -> {where(adoption_status: "adopted")}
  scope :female, -> { where(gender: 'female') }
  scope :male, -> { where(gender: 'male')}
  scope :featured, -> {where(is_featured: true) }
  scope :adult, -> { where('born_on < ?', 1.years.ago ).order(:born_on) }
  scope :puppy, -> { where('born_on > ?', 1.years.ago ).order(:born_on) }
  scope :hdb_approved, -> {where(is_hdb_approved: "true")}
  scope :not_hdb_approved, -> {where(is_hdb_approved: "false")}
  scope :maybe_hdb_approved, -> {where(is_hdb_approved: "maybe")}

 

  has_many :updates, dependent: :destroy
  has_many :photos, dependent: :destroy
  belongs_to :location, optional: true
end
