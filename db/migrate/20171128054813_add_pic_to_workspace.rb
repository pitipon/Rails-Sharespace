class AddPicToWorkspace < ActiveRecord::Migration[5.1]
  def change
    add_column :workspace, :photo, :string
  end
end
