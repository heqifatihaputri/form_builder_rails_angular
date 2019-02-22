class DropElementTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :elements
  end
end
