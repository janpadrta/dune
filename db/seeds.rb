# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

titans = House::Titan.create(name: 'Titans', playable: false)
atr = House::Atreides.create(name: 'Atreides', playable: true)
har = House::Harkonnen.create(name: 'Harkonnen', playable: true)
cor = House::Corrino.create(name: 'Corrino', playable: true)

