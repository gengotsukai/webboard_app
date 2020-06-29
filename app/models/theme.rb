class Theme < ApplicationRecord
	has_many :theme_categories
	has_many :categories, through: :theme_categories
end
