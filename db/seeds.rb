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
  ])

Screen.create([
  {name: "A", seat_count: 75},
  ])

t = DateTime.new(2016, 2, 16, 20, 30) 
Show.create([
  {movie_id: 1, screen_id: 1, start_time:  DateTime.new(2016, 2, 15, 20, 30) },
  {movie_id: 2, screen_id: 1, start_time: t },
  ])


Ticket.create([
  {show_id: 1, email_address: "test@test.com"},
  {show_id: 1, email_address: "test1@test.com"},
  {show_id: 1, email_address: "test2@test.com"},
  {show_id: 1, email_address: "test3@test.com"},
  {show_id: 1, email_address: "test4@test.com"},
  {show_id: 2, email_address: "test@test.com"},
  ])