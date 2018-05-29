# ../controllers/concerns/accessible.rb
module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_owner
      flash.clear
      # if you have rails_owner. You can redirect anywhere really
      puts "###########################"
      puts authenticated_owner_root_path
      redirect_to(authenticated_owner_root_path) && return
    elsif current_user
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_user_root_path) && return
    end
  end
end
