class ThemeCategory < ApplicationRecord
	belongs_to :theme
	belongs_to :category
end
