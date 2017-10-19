json.extract! profile, :id, :user_id, :avatar_image_data, :is_adviser, :created_at, :updated_at
json.url profile_url(profile, format: :json)
