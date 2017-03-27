json.extract! dog, :id, :color_markings, :adoption_status, :dog_location, :mr_facility_id, :rescued_on, :is_hdb_approved, :gender, :born_on, :chip_number, :license_number, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :background_story, :quote, :created_at, :updated_at
json.url dog_url(dog, format: :json)
