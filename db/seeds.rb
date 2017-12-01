# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Owner.destroy_all
Workspace.destroy_all
# User.destroy_all

owners = []

10.times do
  owners << Owner.create!(
    email: Faker::Internet.email,
    password: 123123
  )
end

banner_photos_array = [
  "http://www.bespokesf.co/Coworking.png",
  "https://assets.entrepreneur.com/content/3x2/1300/20170123203353-GettyImages-598310497.jpeg",
  "https://levels.io/wp-content/uploads/2017/02/IMG_4341.jpg",
  "https://qzprod.files.wordpress.com/2017/01/wework.jpg?quality=80&strip=all&w=3960",
  "https://conversational-itxdesign.netdna-ssl.com/wp-content/uploads/2016/05/thegrove-1.png",
  "http://connectcoworking.com/wp-content/uploads/462a2292.jpg",
  "http://www.enerspacecoworking.com/enerspace1/wp-content/uploads/2015/11/Lofty_Enerspace-E2_full-res-1-edited-1.jpg",
  "http://wiki.coworking.org/f/1412587873/%EA%B7%B8%EB%A6%BC2.png",
  "https://blog.invoiceberry.com/wp-content/uploads/2016/07/london-coworking-huckletree-shoreditch.jpg",
  "https://www.miamishared.com/sliders/cycle/cycle1/images/shared-office-space_1.jpg",
  "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjE94S1_eXXAhUqwVQKHYiuDdEQjBwIBA&url=http%3A%2F%2Factiverain.com%2Fimage_store%2Fuploads%2F7%2F4%2F0%2F8%2F2%2Far134064702128047.jpeg&psig=AOvVaw1EAx2cRicLWeGoujbqUWPp&ust=1512120314858140",
  "http://www.tripleseat.com/wp-content/uploads/2015/09/ugly-office-3.jpg",
  "https://sawdustblog.files.wordpress.com/2013/01/office_before_wide-shot1.jpg",
  "https://i.pinimg.com/originals/77/70/5d/77705d0857b09de35c66b52e7db94260.jpg",
  "http://3.bp.blogspot.com/-jBQvvLsimaI/Tmc8BCRBd6I/AAAAAAAAHZ4/E1nOI77Kjnw/s1600/Hotel_room_05.jpg",
  "http://www.codexltd.com/latest/wp-content/uploads/2016/08/office-06.jpg",
  "https://inhabitat.com/wp-content/blogs.dir/1/files/2011/08/large_tresbirds.office.2.jpg",
  "https://i.pinimg.com/originals/c2/ca/60/c2ca60e7417b8ed1a09cc6ee76ba98e4.jpg",
  "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwigz4rO_uXXAhVqlFQKHWl3CNEQjBwIBA&url=https%3A%2F%2Fs-media-cache-ak0.pinimg.com%2Foriginals%2Fbe%2F6a%2Fbe%2Fbe6abeeeae6fe49cc6cd8edfa8b62bba.jpg&psig=AOvVaw1M9Ug1iAgUvq6TYJdqIG8A&ust=1512120656847873",
  "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjetOze_uXXAhWHjlQKHb40A88QjBwIBA&url=http%3A%2F%2Fwww.futomicdesigns.com%2Fimages%2Foffice-interior%2Ftheme-office%2Ffutomic-designs-theme-office-interior-designers1.jpg&psig=AOvVaw1M9Ug1iAgUvq6TYJdqIG8A&ust=1512120656847873"
]

cover_image_array = [
  "https://s-i.huffpost.com/gen/911969/images/o-SAN-FRANCISCO-SKINNIEST-BUILDINGS-facebook.jpg",
  "http://www.tradeaddresses.com/images/property_photos/1329303423_width800_p_full_161795_526755_property_26.jpg",
  "https://imageserver-bisnow1.netdna-ssl.com/NfMnzeJSQGi3pouQe14E8fvYdrA=/0x0/publisher/56900eb42fbc6_One_South_Wacker.jpeg",
  "https://i.ytimg.com/vi/PCOhK2j4EpM/maxresdefault.jpg",
  "https://newyorkyimby.com/wp-content/uploads/2015/09/666-5th-avenue-new-york-ny-777x469.jpg",
  "https://assets.dnainfo.com/photo/2016/12/1482778816-286511/original.jpg",
  "http://photos.wikimapia.org/p/00/03/56/25/71_big.jpg",
  "https://www.officelovin.com/wp-content/uploads/2016/09/indeed-nyc-office-10.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/3/38/HK_HSBC_Main_Building_2008.jpg",
  "https://i.pinimg.com/originals/a5/a9/29/a5a92933fbd0e24ac9a428ad0810eea1.jpg",
  "http://news.bbcimg.co.uk/media/images/58125000/jpg/_58125103_013825248-1.jpg",
  "http://masterclassbrazil.com/wp-content/uploads/2012/12/Trump-Towers-Rio-de-Janeiro.png",
  "https://photos.travellerspoint.com/248510/IMG_8782.jpg",
  "https://tribktla.files.wordpress.com/2017/09/office.jpg?quality=85&strip=all&strip=all",
  "http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/201109-w-college-campus-stanford.jpg?itok=ZfaMDj9q",
  "https://www.noupe.com/wp-content/uploads/trans/wp-content/uploads/2010/04/architecture8.jpg",
  "http://electrohome.info/wp-content/uploads/2015/10/new-beautiful-architecture-designs-with-beautiful-architecture-awesome.jpg",
  "https://whyfiles.org/wp-content/uploads/2011/03/1landfill.jpg",
  "https://media.glassdoor.com/l/32269/wolcott-ai-office.jpg",
  "https://images.adsttc.com/media/images/5652/0604/e58e/ce7a/6900/0108/slideshow/NLA_View_from_Avenue_Simone_Veil.jpg?1448216050"

]

real_desc_array = ["For 1 Open Desk",
  "Team Office for 6",
  "Private Office for 1",
  "Alternative Space for The Modern Worker",
  "Private Office for 2 with Modern Design",
  "Private office for 5",
  "For 1 Dedicated Desk",
  "Private Office for 3",
  "Private Office for 4",
  "Team Office for 8",
  "Office Suitefor 10",
  "Coworking for 5 in Creative Space"
]

real_attr_array = [
"
- 24/7 Access to open desk space.
- 6 hours of meeting room time.
- M-F, 9a-6p Access to our 3 other locations.
- High speed internet (Wired/Wireless)
- Shared print/scan/fax.
- Weekly community events.
- Membership to AnyPerk employee program.
- Coffee, tea, and filtered water.",

"
- Furnished with 6 large desk, executive chairs and lots of room for storage.
- The loft has sky lights and its own temperature controls.
- Private loft area within the Gumas Advertising office.
- The building has secured a network of cameras.
- Weekly janitorial service.",

"
- Exposed 13-foot concrete waffle slab ceiling with spiral HVAC duct.
- Custom steel and glass suite entrance and conference room.
- High-end signature open kitchen including stainless steel appliances.
- Exposed board formed concrete columns.
 - Polished concrete floors.",

"
- Access to Print/Copy/Scanner/Fax
- High speed internet (speed 100/100)
- 20'%' discount on other additional services
- Free Coffee/tea",

"
- Fully furnished workspace
- Fast and Secure Wifi + Ethernet connection
- Invitations to all of our events
- Complimentary beverages and coffee on tap
- IT staff on site",

"
- Fully furnished work space
- Your own personal desk
- Four Conference rooms credits
- Invitations to all of our events
- Fast and Secure Wifi + Ethernet connection
- 120 black & white prints + 20 color prints a month
- Mail and Package handling
- Guest reception
- Complimentary beverages and coffee on tap"
]

real_space_name = [
"Productive Panda",
"The 404",
"Posh",
"My Business Bar",
"Cowork Buffalo",
"Think Space",
"Work Zones",
"White Space",
"The Vault",
"Batch",
"Indie Grove",
"Thrive Workplace Solutions",
"Onward",
"The Productive",
"The Port",
"Work Spring Central Loop",
"Ownard",
"Mission 50",
"Makeshift",
"Command Desk",
"Writer Junction",
"Wix Lounge",
"Get Smart",
"Hub",
"Crave Lab",
"Venture X",
"Platform"

]

real_address = [
"9 Binjiang E Rd, HeJiangTing, Jinjiang Qu, Chengdu Shi, Sichuan Sheng, China, 610000",
"475 Sansome St, San Francisco, CA 94111, USA",
"Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
"1101 4th Ave, Seattle, WA 98101, USA",
"Krasnaya ploshad, Moskva, Russia, 109012",
"Rhapta Road, Westlands, Nairobi, Kenya",
"Westminster, London SW1A 0AA, UK",
" 176 Sinbanpo-ro, Seocho-gu, Seoul, South Korea",
" 1 Chome-1-2 Oshiage, Sumida, Tokyo 131-0045, Japan",
" Av. Juárez, Centro Histórico, 06050 Ciudad de México, CDMX, Mexico",
"Austurbakki 2, 101 Reykjavík, Iceland",
"10 Bayfront Avenue, Singapore 018956",
"Kuala Lumpur City Centre, 50088 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia",
"Bennelong Point, Sydney NSW 2000, Australia",
"Platz der Republik 1, 11011 Berlin, Germany",
"Kalabaka 422 00, Greece",
"Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ, 20271-130, Brazil",
"Balcarce 50, 1064 Buenos Aires, Argentina",
"3735 Capilano Rd, North Vancouver, BC V7R 4J1, Canada",
"Suncoast Boulevard, Durban, 4056, South Africa",
"Klausner St 15, Tel Aviv-Yafo, 61392, Israel"
]


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















100.times do
  Workspace.create!(
    name: real_space_name.sample,
    description: real_desc_array.sample,
    address: real_address.sample,
    city: Faker::Address.city,
    country: Faker::Address.country,
    latitude: Faker::Address.latitude ,
    longitude: Faker::Address.longitude ,
    price_per_day: rand(10...30),
    owner: owners.sample,
    space_type: Workspace::SPACETYPE.sample,
    capacity_max: rand(10...300),
    environment: Workspace::ENVIRONMENT.sample,
    theme: Workspace::THEME.sample,
    available_time: Workspace::AVAILABLE_TIME.sample,
    catering: Workspace::CATERING.sample,
    security: Workspace::SECURITY.sample,
    media: Workspace::MEDIA.sample,
    services: Workspace::SERVICES.sample,
    free_rooms: Workspace::FREEROOMS.sample,
    parking: Workspace::PARKING.sample,
    pet_friendly: Workspace::PET_FRIENDLY.sample,
    utilities: Workspace::UTILITIES.sample,
    near_location: Workspace::NEAR.sample,
    contact_number: Faker::Company.duns_number,
    contact_name: Faker::FamilyGuy.character,
    contact_email: Faker::Internet.email,
    logo: Faker::Company.logo,
    attr: real_attr_array.sample,
    banner_image_url: banner_photos_array.sample,
    cover_image_url: cover_image_array.sample
  )
  end
