class Workspace < ApplicationRecord

  SPACETYPE = ["Coworking","Meeting Room","Private Office","Remote Office","Cubicle","Board Room","Training Room","Presentation Room","Deposition Room","Personal Workspace","Desk Space","Shared Office Space","Document Review"]
  # MINIMAL_SPACETYPE = ["Desk", "Meeting Space", "Office", "Training Room", "Event Space"]
  ENVIRONMENT = ["Coworking","Business Center", "Private Business", "Hotel", "University", "Apartment", "House", "Garden"]
  THEME = ["Business", "IT", "Design", "Financial", "Artist", "Relaxed"]
  AVAILABLE_TIME = ["7 Days, 24 Hours", "5 Days, 24 Hours", "7 Days, Business Hours", "5 Days, Business Hours"]
  CATERING = ["Coffee/Tea", "Partial Kitchen", "Full Kitchen"]
  SECURITY = ["Door Lock", "Lobby Security", "Security Guard"]
  MEDIA = ["Film Allowance", "Recording camera", "Social Media equipment", "YouTube Casting equipment"]
  SERVICES = ["Hosted Reception", "Mailbox Services", "Room Set-up", "IT Service", "Maid", "Body Guard"]
  FREEROOMS = ["Meeting Room", "Relax Space", "Exercise Room", "Take a nap Room", "Maker Room", "Smoking Room", "Private Telephone Room", "Shower Room", "Long Term / Short Term storage", "Exclusive Lounge"]
  PARKING = ["Bicycles", "Bike", "Cars", "Bus", "Truck", "VIP cars"]
  PET_FRIENDLY = ["none", "Dog", "Cat", "Any"]
  UTILITIES = ["Phone", "IP Phone", "Notebook", "Printer", "Scanner", "Copy Machine", "Wireless Hotspot", "Projector", "Pointer", "Maker ", "Paper", "Sofa", "Chair", "TV/Monitor", "Video Conference", "White Board","Air-conditioner", "Heater"]
  NEAR = ["Airport", "Underground", "Downtown", "Beach", "Mountain"]

  TEMP_IMG = ["http://lewagon.github.io/html-css-challenges/10-homepage-with-cards/images/shanghai.jpg","http://lewagon.github.io/html-css-challenges/10-homepage-with-cards/images/rio.jpg","http://lewagon.github.io/html-css-challenges/10-homepage-with-cards/images/berlin.jpg"]

  belongs_to :owner
  has_many :comments
  has_many :orders

end
