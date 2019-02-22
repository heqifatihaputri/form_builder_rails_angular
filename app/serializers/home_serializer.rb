class HomeSerializer < ActiveModel::Serializer
  attributes :id, :label_name, :check_type

  def label_name
  	if check_type == "SubDropdown" || check_type == "SubMultipleChoice"
  		object.choice_name
  	else
  		object.label_name
  	end
  end

  def check_type
  	# debugger
  	object.class.name
  end
end
