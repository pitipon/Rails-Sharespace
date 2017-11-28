class Workspace < ApplicationRecord

  ENVIRONMENT = ["Coworking","Business Center", "Private Business", "Hotel", "University", "Apartment", "House", "Garden"]
  MIN_SPACE_TYPE = ["Desk", "Meeting Space", "Office", "Training Room", "Event Space"]
  THEME = ["Business", "IT", "Design", "Fincial", "Artist", "Relaxed"]
  AVAILABLE_TIME = []
  CATERING = ["Coffee/Tea", "Partial Kitchen", "Full Kitchen"]
  SECURITY = ["Door Lock", "Lobby Security", "Security Guard"]

  belongs_to :owner
  has_many :comment
  has_many :order



end
