class CreateMultipleChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_choices do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width
      t.string :alignment

      t.timestamps
    end
  end
end
