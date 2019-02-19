class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width
      t.boolean :limit_char
      t.string :input_height

      t.timestamps
    end
  end
end
