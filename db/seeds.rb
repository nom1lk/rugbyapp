# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'matches.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  t = Match.new
  t.date = row['date']
  t.teams = row['teams']
  t.venue = row['venue']
  t.time = row['time']
  t.save
  puts "#{t.date}, #{t.teams} saved"
end

puts "There are now #{Match.count} rows in the matches table"








