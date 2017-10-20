class Post < ApplicationRecord
  belongs_to :user
  has_many :replies, dependent: :destroy
  has_many :categorization
  has_many :categories, through: :categorization
end
