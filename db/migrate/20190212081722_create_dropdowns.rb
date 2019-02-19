class CreateDropdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :dropdowns do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width
      t.boolean :answer_public

      t.timestamps
    end
  end
end
