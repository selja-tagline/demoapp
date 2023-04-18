class AddOutOfPrintAtBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :out_of_print, :boolean
  end
end
