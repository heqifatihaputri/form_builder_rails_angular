# include ActiveModel::Serialization
class EmailSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :required_field, :half_width, :mailchimp
end
