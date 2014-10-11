# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Category.destroy_all
a1 = Author.create(name: "Holly Moody", title: "Rockn' Rails Developer")
a2 = Author.create(name: "Ronn Moody", title: "Supreme Commander")
a3 = Author.create(name: "Levi Howard", title: "Sound Master")

c1 = Category.create(name: "Funny")
c2 = Category.create(name: "Useful")
c3 = Category.create(name: "Unusual")
