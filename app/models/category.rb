class Category < ApplicationRecord
    has_many :categorization
    has_many :categories, through: :categorization
end
