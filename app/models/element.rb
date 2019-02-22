class Element < ApplicationRecord
	belongs_to :inputable, polymorphic: true
end
