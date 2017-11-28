class AddTitleColumnToWorkspace < ActiveRecord::Migration[5.1]
  def change
    add_column :workspace, :title, :text
  end
end
