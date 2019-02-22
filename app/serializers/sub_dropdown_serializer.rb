# include ActiveModel::Serialization
class SubDropdownSerializer < ActiveModel::Serializer
  attributes :id, :choice_name, :price
end
