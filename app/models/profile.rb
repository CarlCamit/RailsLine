class Profile < ApplicationRecord
  include AvatarImageUploader[:avatar_image]
  belongs_to :user
end
