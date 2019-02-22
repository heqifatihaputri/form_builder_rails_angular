class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.integer :content_id

      t.timestamps
    end
  end
end
