class AddFormIdToContent < ActiveRecord::Migration[5.2]
  def change
  	add_column :contents, :form_id, :integer
  end
end
