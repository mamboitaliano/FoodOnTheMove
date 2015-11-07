# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib','trucks','Mobile_Food_Facility_Permit.csv'))
csv = CSV.parse(csv_text, :headers =>true)

csv.each do |row|
  t = Truck.new

  t.location = row['locationid']
  t.applicant = row['Applicant']
  t.facility_type = row['FacilityType']
  t.location_description = row['LocationDescription']
  t.address = row['Address']
  t.block = row['block']
  t.lot = row['lot']
  t.status = row['Status']
  t.food_items = row['FoodItems']
  t.x = row['X']
  t.y = row['Y']
  t.latitude = row['Latitude']
  t.longitude = row['Longitude']
  t.schedule = row['Schedule']
  t.save
  puts "#{t.applicant} Entered!!!"
end