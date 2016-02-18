require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create([
  {title: "Zoolander 2", rating: "PG-13", length: 102},
  {title: "13 Hours:The Secret Soldiers Of Benghazi", rating: "R", length: 144},
  {title: "Star Wars: The Force Awakens", rating: "PG-13", length: 136},
  {title: "How to Be Single", rating: "R", length: 110},
  ])

Screen.create([
  {name: "A", seat_count: 75},
  {name: "B", seat_count: 70},
  {name: "C", seat_count: 55},
  ])

Show.create([
  {movie_id: 1, screen_id: 1, starting_time:  DateTime.new(2016, 10, 31, 6, 30, 2) },
  {movie_id: 2, screen_id: 1, starting_time:  DateTime.new(2016, 10, 31, 18, 40, 2) },
  {movie_id: 3, screen_id: 1, starting_time:  DateTime.new(2016, 10, 31, 20, 50, 2) },
  {movie_id: 4, screen_id: 1, starting_time:  DateTime.new(2016, 10, 31, 18, 45, 2) },
  ])



55.times do
  Ticket.create(show_id: 3, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email)
end


Ticket.create([
  {show_id: 1, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email },
  {show_id: 2, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email},
  {show_id: 4, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email},
  {show_id: 1, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email},
  {show_id: 2, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email},
  ])

shows = Show.all
shows.each do |show|
  tickets = Ticket.where(show_id: show.id)
  show.seats_sold = tickets.count
  show.save
end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')