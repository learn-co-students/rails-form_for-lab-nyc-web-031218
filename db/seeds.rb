# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Harim", last_name: "Choi")
Student.create(first_name: "Eric", last_name: "Kim")
Student.create(first_name: "Laura", last_name: "Campbell" )
Student.create(first_name: "Arthur", last_name: "Lurye" )



Schoolclass.create(title: "Ruby", room_number: 1 )
Schoolclass.create(title: "Javascript" , room_number: 2)
Schoolclass.create(title: "React", room_number: 3)
