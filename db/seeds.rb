# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.all.each do |contact|
  gps = Geocoder.coordinates contact.address
  contact.update latitude: gps[0], longitude: gps[1]
  sleep 2
end