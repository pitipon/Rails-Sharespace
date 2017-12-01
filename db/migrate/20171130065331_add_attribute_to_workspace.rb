class AddAttributeToWorkspace < ActiveRecord::Migration[5.1]
  def change
    add_column :workspaces, :attr, :text
  end
end
