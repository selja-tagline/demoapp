class AddCityToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :city, :string
  end
end
