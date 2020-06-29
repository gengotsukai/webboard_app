class Category < ApplicationRecord
	has_many :theme_categories
	has_many :themes, through: :theme_categories
end
