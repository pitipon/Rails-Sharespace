class WorkspacesController < ApplicationController

  layout :resolve_layout
  before_action :set_workspace, only: [:show]
  before_action :set_owner, only: [ :new, :create]


  # GET    /owner/:owner_id/workspaces
  def index
    # @owner
    # @workspaces
    @owner = current_owner
    find_workspaces_of_owner

  end

  def home
    # layout 'user'
    @workspaces = Workspace.all
  end

  # GET /workspaces/1
  def show
    # @workspace
    @workspace = Workspace.find(params[:id])
  end

  # GET    /owner/:owner_id/workspaces/new
  def new
    # use @owner for simple_form_for
    @workspace = Workspace.new
  end

  # POST   /owner/:owner_id/workspaces
  def create
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
    when "index","show","new", "create"  # [:index, :show, :new, :create]
      "owner"
    when "home"
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
