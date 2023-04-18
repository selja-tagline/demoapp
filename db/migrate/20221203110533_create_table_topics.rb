class CreateTableTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :table_topics do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
