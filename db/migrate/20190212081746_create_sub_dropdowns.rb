class CreateSubDropdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_dropdowns do |t|
      t.string :choice_name
      t.integer :price

      t.timestamps
    end
  end
end
