class PagesController < ApplicationController
  # layout 'user'
  layout 'owner', only: :owner
  layout 'user', only: :user
  def home
  end
end
