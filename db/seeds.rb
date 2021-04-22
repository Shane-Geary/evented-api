# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group1 = Group.find_or_create_by(name: 'DeadHeads', fav_event: 'Concerts', fav_genre: 'Rock', catchphrase: 'Far out, man')
group1 = Group.find_or_create_by(name: 'Headbangers', fav_event: 'Concerts', fav_genre: 'Dubstep', catchphrase: 'Break your neck!')