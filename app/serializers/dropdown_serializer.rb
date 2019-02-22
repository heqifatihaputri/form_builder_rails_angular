# include ActiveModel::Serialization
class DropdownSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :required_field, :half_width, :answer_public
end
