class RenameWorkspace < ActiveRecord::Migration[5.1]
  def change
    rename_table :workspace, :workspaces
  end
end
