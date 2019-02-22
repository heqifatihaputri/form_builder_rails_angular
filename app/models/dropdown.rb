class Dropdown < ApplicationRecord
	has_one :element, as: :inputable
end
