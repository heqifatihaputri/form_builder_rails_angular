class Form < ApplicationRecord
	has_one :content
	has_many :texts
	has_many :emails
	has_many :paragraphs
	has_many :dropdowns
	has_many :sub_dropdowns
	has_many :multiple_choices
	has_many :sub_multiple_choices
	has_many :datetimes
	has_many :elements
end
