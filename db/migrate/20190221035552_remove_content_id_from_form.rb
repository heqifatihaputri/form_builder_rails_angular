class RemoveContentIdFromForm < ActiveRecord::Migration[5.2]
  def change
  	remove_column :forms, :content_id
  end
end
