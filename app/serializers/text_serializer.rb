class TextSerializer < ActiveModel::Serializer
	# include ActiveModel::Serialization
  attributes :id, :label_name, :required_field, :half_width
end
