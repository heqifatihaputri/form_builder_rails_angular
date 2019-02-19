class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width

      t.timestamps
    end
  end
end
