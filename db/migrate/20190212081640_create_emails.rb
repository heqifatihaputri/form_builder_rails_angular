class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :label_name
      t.boolean :required_field
      t.boolean :half_width
      t.boolean :mailchimp

      t.timestamps
    end
  end
end
