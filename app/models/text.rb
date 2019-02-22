class Text < ApplicationRecord
	has_one :element, as: :inputable
end
