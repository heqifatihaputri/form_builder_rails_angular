class ElementSerializer < ActiveModel::Serializer
  attributes :id, :form_id, :inputable_type, :inputable_id, :inputable

  def inputable
  	object.inputable
  end
end
