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
c3 = Category.create(name: "General")

p1 = Post.create(subject: "It's all Latin to Me!!", author_id: a1.id, category_id: c1.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique viverra elit et vulputate. Fusce eu orci arcu. Nullam placerat tortor elit, ac congue massa feugiat lacinia. Donec commodo molestie odio, vel finibus ante consequat sed. Phasellus ac convallis nisl. Praesent neque erat, dignissim eget lectus nec, consequat ultrices arcu. Proin ut arcu non sem sodales posuere ac ut elit. Proin lacinia ut dolor in auctor. Pellentesque vel tristique leo. Aliquam tincidunt, sem non volutpat viverra, odio turpis pharetra lectus, vel suscipit orci massa et eros")
p2 = Post.create(subject: "Useful facts on dogs", author_id: a3.id, category_id: c3.id, content: "Dogs do dream! Dogs and humans have the same type of slow wave sleep (SWS) and rapid eye movement (REM) and during this REM stage dogs can dream. The twitching and paw movements that occur during their sleep are signs that your pet is dreaming. Source: Healthy Pet")
