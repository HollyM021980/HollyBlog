# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all
a1 = Author.create(name: "Holly Moody", title: "Rockn' Rails Developer")
a2 = Author.create(name: "Ronn Moody", title: "Supreme Commander")
a3 = Author.create(name: "Levi Howard", title: "Sound Master")
a4 = Author.create(name: "Tom Insightful", title: "Supreme Leadership Guru")
a5 = Author.create(name: "Max Monday", title: "Leadership Guru")
a6 = Author.create(name: "Suzie Blogger", title: "Blogger at Large")

c1 = Category.create(name: "Funny")
c2 = Category.create(name: "Useful")
c3 = Category.create(name: "Unusual")
c4 = Category.create(name: "General")

p1 = Post.create(author_id: a1.id, category_id: c1.id, subject: "It's all Latin to Me!!", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique viverra elit et vulputate. Fusce eu orci arcu. Nullam placerat tortor elit, ac congue massa feugiat lacinia. Donec commodo molestie odio, vel finibus ante consequat sed. Phasellus ac convallis nisl. Praesent neque erat, dignissim eget lectus nec, consequat ultrices arcu. Proin ut arcu non sem sodales posuere ac ut elit. Proin lacinia ut dolor in auctor. Pellentesque vel tristique leo. Aliquam tincidunt, sem non volutpat viverra, odio turpis pharetra lectus, vel suscipit orci massa et eros")
p2 = Post.create(author_id: a3.id, category_id: c3.id, subject: "Useful facts on dogs", content: "Dogs do dream! Dogs and humans have the same type of slow wave sleep (SWS) and rapid eye movement (REM) and during this REM stage dogs can dream. The twitching and paw movements that occur during their sleep are signs that your pet is dreaming. Source: Healthy Pet")
p3 = Post.create(author_id: a5.id, category_id: c4.id, subject: "Failure or 10,000 ways to do it wrong?", content: "This is based on a famous quote from Edison that reminds us that failures are inevidable and paths for learning rather than actual failure.")
p4 = Post.create(author_id: a4.id, category_id: c2.id, subject: "Racing Sheep, Herding Race Horses", content: "In this presentation from Dave Thomas in 2007, he talks about developing expertise...")


p1.comments.create(author_id: a1.id, content: "Geez, where is bable-fish when you need him!!")
p2.comments.create(author_id: a2.id, content: "Yeah, it could have at LEAST been Greek!!")
p3.comments.create(author_id: a1.id, content: "Amazing!  You kinda know this 'cause they bark and kick in their sleep.")
p4.comments.create(author_id: a1.id, content: "Love this presentation. Has helped me use the right prism when talking with folks of widely varying expertise.")
p4.comments.create(author_id: a2.id, content: "Great presentation from an industry Guru!!")
p3.comments.create(author_id: a6.id, content: "Never fail, always try again..")
