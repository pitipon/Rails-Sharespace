class AddBannerAndCoverImageUrlColumnToWorkspaceDb < ActiveRecord::Migration[5.1]
  def change
    add_column :workspaces, :cover_image_url, :string
    add_column :workspaces, :banner_image_url, :string
  end
end

