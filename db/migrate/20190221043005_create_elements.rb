class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.integer :form_id
      t.references :inputable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
