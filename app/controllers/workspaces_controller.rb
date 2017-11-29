class WorkspacesController < ApplicationController

  layout :resolve_layout
  before_action :set_workspace, only: [:show]
  before_action :set_owner, only: [ :new_by_owner, :create_by_owner]


  # GET    /owner/:owner_id/workspaces
  def index_owner
    # @owner
    # @workspaces
    @owner = current_owner
    find_workspaces_of_owner

  end

  # GET   /user/:user_id/workspaces
  def index_user
    # layout 'user'
    @workspaces = Workspace.all
  end

  # user_workspaces_show_by_user     GET    /user/:user_id/workspaces/:id(.:format)     workspaces#show_by_user
  def show_by_user
    # @workspace
    @workspace = Workspace.find(params[:id])
  end

  # owner_new_workspace          GET    /owner/:owner_id/workspaces/new_by_owner      workspaces#new_by_owner
  def new_by_owner
    # use @owner for simple_form_for
    @workspace = Workspace.new
  end

  # owner_create_new_workspace   POST   /owner/:owner_id/workspaces           workspaces#create_by_owner
  def create_by_owner
    # we need @owner
    @workspace = Workspace.new(workspace_params)
    @workspace.owner = @owner
    @workspace.save
    redirect_to root_path, notice: 'Workspace was successfully created.'

  end




private

  # find owner by id
  def set_owner
    @owner = Owner.find(params[:owner_id])
  end

  #  find workspace by id
  def set_workspace
    @workspace = Workspace.find(params[:id])
  end

  def find_workspaces_of_owner
    @workspaces = []
    @owner.workspaces.each do |x|
      @workspaces << x
    end

  end

  def resolve_layout
    case action_name
    when "index_owner","show","new_by_owner", "create_by_owner"  # [:index, :show, :new, :create]
      "owner"
    when "index_user","show_by_user"
      "user"
    else
      "application"
    end
  end

  def workspace_params
    params.require(:workspace).permit(
      :name,
      # :description,
      # :address,
      # :price_per_day,
      :owner_id,
      :space_type,
      # :capacity_max,
      :environment,
      :theme,
      :available_time,
      :catering,
      :security,
      :media,
      :services,
      :free_rooms,
      :parking,
      # :pet_friendly,
      # :utilities,
      # :near_location,
      # :contact_number,
      # :contact_name,
      # :contact_email
    )
  end

end
