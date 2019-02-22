# include ActiveModel::Serialization
class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :button_text
end
