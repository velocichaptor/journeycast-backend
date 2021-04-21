# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
# - name
# - age

user1 = User.create(name: Faker::Name.first_name, age: Faker::Number.between(from: 18, to: 99))
user2 = User.create(name: Faker::Name.first_name, age: Faker::Number.between(from: 18, to: 99))

# locations
# - name

location1 = Location.create(name: Faker::Movies::StarWars.planet)
location2 = Location.create(name: Faker::Movies::StarWars.planet)

# vacation
# - t.string :title
# - t.datetime :date
# - t.datetime :day
# - t.string :note
# - t.integer :userId
# - t.integer :locationId

vacation1 = Vacation.create(title: Faker::Book.title, start_date: Faker::Date.between(from: '2021-04-01', to: '2021-04-05'), end_date: Faker::Date.between(from: '2021-04-06', to: '2021-04-09'), day: Faker::Number.between(from: 1, to: 10), note: Faker::Food.description, user_id: 1, location_id: 1)
vacation2 = Vacation.create(title: Faker::Book.title, start_date: Faker::Date.between(from: '2021-05-01', to: '2021-05-05'), end_date: Faker::Date.between(from: '2021-05-06', to: '2021-05-09'), day: Faker::Number.between(from: 1, to: 10), note: Faker::Food.description, user_id: 1, location_id: 2)
vacation3 = Vacation.create(title: Faker::Book.title, start_date: Faker::Date.between(from: '2021-06-01', to: '2021-06-05'), end_date: Faker::Date.between(from: '2021-06-06', to: '2021-06-09'), day: Faker::Number.between(from: 1, to: 10), note: Faker::Food.description, user_id: 1, location_id: 2)
vacation4 = Vacation.create(title: Faker::Book.title, start_date: Faker::Date.between(from: '2021-07-01', to: '2021-07-05'), end_date: Faker::Date.between(from: '2021-07-06', to: '2021-07-09'), day: Faker::Number.between(from: 1, to: 10), note: Faker::Food.description, user_id: 1, location_id: 2)

# days
# -t.string :name
# t.string :forecast
# t.string :activity
# t.integer :vacation_id

day1 = Day.create(name: "Monday", forecast: "Partly Cloudy but Warm", activity: "Mountain Biking", vacation_id: 1)
day2 = Day.create(name: "Tuesday", forecast: "Sunny and Humid", activity: "Hiking", vacation_id: 2)
