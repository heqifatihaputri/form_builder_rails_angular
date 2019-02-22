class AddIdInputToElements < ActiveRecord::Migration[5.2]
  def change
  	add_column :elements, :text_id, :integer
  	add_column :elements, :email_id, :integer
  	add_column :elements, :paragraph_id, :integer
  	add_column :elements, :dropdown_id, :integer
  	add_column :elements, :sub_dropdown_id, :integer
  	add_column :elements, :multiple_choice_id, :integer
  	add_column :elements, :sub_multiple_choice_id, :integer
  	add_column :elements, :datetime_id, :integer
  end
end
