class AddSurnameToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :surname, :string
  end
end
