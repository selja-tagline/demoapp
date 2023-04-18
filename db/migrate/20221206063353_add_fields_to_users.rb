class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :surname, :string
    add_column :users, :date_of_birth, :date
    add_column :articles, :user_id, :integer
  end
end
