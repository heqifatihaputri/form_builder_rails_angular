class MultipleChoice < ApplicationRecord
	has_one :element, as: :inputable
end
