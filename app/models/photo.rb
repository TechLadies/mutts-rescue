class Photo < ApplicationRecord
  belongs_to :dog, optional: true
  scope :profile_photo, -> {where(profile: true).first}
end
