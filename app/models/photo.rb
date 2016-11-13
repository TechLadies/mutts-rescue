class Photo < ApplicationRecord
  belongs_to :dog, optional: true

 validates :imglink, presence: true
 validates :dog_id, presence: true


  scope :profile_photo, -> {where(profile: true).first}
  scope :more_photo, -> {where.not(profile: true)}
end
