# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: "John", email: "jerryowusu6133@gmail.com", password: "password")
user2 = User.create(name: "Jerry", email: "jerryowusu@gmail.com", password: "password")

Post.create(title: "John's Post", text: "This is John's post", comments_counter: 0, likes_counter: 0, author_id: user1.id )
Post.create(title: "Jerryowusu's Post", text: "This is Jerryowusu's post", comments_counter: 0, likes_counter: 0, author_id: user2.id )