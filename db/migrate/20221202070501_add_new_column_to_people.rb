class AddNewColumnToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :name, :string
    add_column :people, :location, :text
  end
end