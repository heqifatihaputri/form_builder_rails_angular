class CreateDatetimes < ActiveRecord::Migration[5.2]
  def change
    create_table :datetimes do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width
      t.string :display_type
      t.string :date_format
      t.boolean :time_type

      t.timestamps
    end
  end
end
