class AddPriceToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :price, :string
  end
end
