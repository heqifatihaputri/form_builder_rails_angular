class SubDropdown < ApplicationRecord
	has_one :element, as: :inputable
end
