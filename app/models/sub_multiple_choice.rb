class SubMultipleChoice < ApplicationRecord
	has_one :element, as: :inputable
end
