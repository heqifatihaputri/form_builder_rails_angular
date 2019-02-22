class AddNameToForm < ActiveRecord::Migration[5.2]
  def change
  	add_column :forms, :name, :string
  end
end
