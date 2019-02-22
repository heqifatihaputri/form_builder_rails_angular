# include ActiveModel::Serialization
class SubMultipleChoiceSerializer < ActiveModel::Serializer
  attributes :id, :choice_name, :price
end
