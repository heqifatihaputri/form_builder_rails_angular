class Datetime < ApplicationRecord
	has_one :element, as: :inputable
end
