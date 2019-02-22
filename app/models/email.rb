class Email < ApplicationRecord
	has_one :element, as: :inputable
end
