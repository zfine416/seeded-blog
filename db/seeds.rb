# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USER
# t.string "user_name"
# t.string "password"
# t.string "first_name"
# t.string "last_name"
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.first_name,
    user_name: Faker::Internet.username(specifier: 7..10),
    password: 'password'
  )
end

# POST
# t.string "title"
# t.text "body"
# t.bigint "user_id"

# Comment
# t.text "content"
# t.bigint "post_id"
# t.bigint "user_id"
50.times do
  Post.create(
    title: Faker::TvShows::RickAndMorty.quote,
    body: Faker::Hipster.paragraph,
    user_id: 1..10
  )
end

100.times do
  Comment.create(
    content: Faker::TvShows::BojackHorseman.quote,
    user_id: 1..10,
    post_id: 1..50
  )
end
