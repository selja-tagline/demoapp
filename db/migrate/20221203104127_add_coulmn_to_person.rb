class AddCoulmnToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :size, :string
    add_column :people, :number, :string
  end
end
