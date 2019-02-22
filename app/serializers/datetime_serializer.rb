# include ActiveModel::Serialization
class DatetimeSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :required_field, :half_width, :display_type, :date_format, :time_type
end
