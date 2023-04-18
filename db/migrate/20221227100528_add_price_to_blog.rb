class AddPriceToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :price, :integer
  end
end
