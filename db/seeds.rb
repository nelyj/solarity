# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Client.delete_all

Client.create!([
  {id: 1, first_name: "Jose", last_name: "Lizana"},
  {id: 2, first_name: "Evangelina",  last_name: "Tapia"},
  {id: 3, first_name: "Melvin",  last_name: "Lizana"}
])