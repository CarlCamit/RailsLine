class Profile < ApplicationRecord
  include AvatarImageUploader[:avatar_image]
end
