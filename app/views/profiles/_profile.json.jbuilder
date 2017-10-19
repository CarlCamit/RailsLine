json.extract! profile, :id, :avatar_image_data, :is_adviser, :created_at, :updated_at
json.url profile_url(profile, format: :json)
