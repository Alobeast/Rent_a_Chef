# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create!(name: 'Catherine', password: 'password', email: 'cath.cat@gmail.com')

User.create!(name: 'Alois', password: 'password1', email: 'alo@gmail.com')

User.create!(name: 'Thomas', password: 'aaaaaa', email: 'tt@gmail.com', chef: true, cuisine:'Thai', qualification: 'Diploma in Culinary Arts', short_bio: 'After completing my Diploma in 2013, I have been working at various Thai restaurants, including Patara, Blue Elephant (sous chef) and most recently Ginger where I have been head chef for 2 years', price: 50, profile_picture: 'image/upload/v1551194950/aqyrmbkw4y1glpyfg9fb.jpg')

User.create!(name: 'Sofia', password: 'bbbbbb', email: 's@gmail.com', chef: true, cuisine:'Italian', qualification: 'Diploma in Culinary Arts', short_bio: "Having grown up in Nona's kitchen, I've always loved cooking and food and went to culinary school to follow my passion. I have been hosting dinner clubs at pop-up locations throughout London for the past 4 years" , price: 45, profile_picture: 'image/upload/v1551194950/aqyrmbkw4y1glpyfg9fb.jpg')

