# include ActiveModel::Serialization
class ParagraphSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :required_field, :half_width, :limit_char, :input_height
end
