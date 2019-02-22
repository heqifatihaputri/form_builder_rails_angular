# include ActiveModel::Serialization
class MultipleChoiceSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :required_field, :half_width, :alignment
end
