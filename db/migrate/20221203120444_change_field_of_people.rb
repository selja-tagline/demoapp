class ChangeFieldOfPeople < ActiveRecord::Migration[7.0]
  def change
    change_column :people, :number, :integer
  end
end
