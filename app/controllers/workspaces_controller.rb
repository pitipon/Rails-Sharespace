class WorkspacesController < ApplicationController

  def index
    @workspace = Workspace.all
  end

  def new
    @workspace = Workspace.new

  end

  def create
    @workspace = Workspace.create(workspace_params)
    if @workspace.save
      redirect_to workspace_index_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @workspace = Workspace.find(params[:id])
  end


private

    def set_workspace
    @workspace = Workspace.find(params[:id])
  end

  def workspace_params
    params.require(:workspace).permit(:owner_id, :price_per_day, :environment, :address, :photo, :photo_cache, :title)
  end

end
