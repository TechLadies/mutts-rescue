json.extract! photo, :id, :imglink, :caption, :profile, :dog_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)