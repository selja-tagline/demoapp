class AddDateToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :Date, :date
  end
end
