class Paragraph < ApplicationRecord
	has_one :element, as: :inputable
end
