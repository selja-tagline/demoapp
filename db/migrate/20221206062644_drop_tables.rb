class DropTables < ActiveRecord::Migration[7.0]
  def change      
    drop_table :craete_articles
  end
end
