class Photo < ApplicationRecord
  belongs_to :dog, optional: true

 validates :imglink, presence: true
 validates :dog_id, presence: true
  validates :caption, length: { maximum: 144 }


  scope :profile_photo, -> {where(profile: true).first}
  scope :more_photo, -> {where.not(profile: true) }
end
