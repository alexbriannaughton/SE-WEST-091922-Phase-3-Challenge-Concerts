# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")

puts "Creating Concerts..."

Concert.create(date: "1", band: ny_band, venue: la_venue)
Concert.create(date: "2", band: la_band, venue: chi_venue)
Concert.create(date: "6", band: la_band, venue: la_venue)
Concert.create(date: "5", band: ny_band, venue: nyc_venue)
Concert.create(date: "3", band: chi_band, venue: chi_venue)
Concert.create(date: "4", band: chi_band, venue: nyc_venue)

puts "Seeding done!"
