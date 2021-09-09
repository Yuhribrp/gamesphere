# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'cgi'

Post.delete_all
Community.delete_all
Evaluation.destroy_all
User.delete_all

# communities
puts "---------------Seeding Communities Started---------------"

# homepage groups

Community.create!(
  title: "League of Legends",
  img_url: "http://localhost:3000/assets/mf.jpg"
)
# dota_2 = Community.create!(
#   title: "DOTA 2",
#   img_url:"http://localhost:3000/assets/ember.jpg"
# )
# fortnite = Community.create!(
#   title: "Fortnite",
#   img_url: "http://localhost:3000/assets/fortnite3.jpg"
# )
# valorant = Community.create!(
#   title: "Valorant",
#   img_url: "http://localhost:3000/assets/valorant.jpg"
# )
# gta_v = Community.create!(
#   title: "Grand Theft Auto V",
#   img_url: "http://localhost:3000/assets/GTA.jpg"
# )
# wow = Community.create!(
#   title: "World of Warcraft",
#   img_url: "http://localhost:3000/assets/wow4.jpg"
# )
# mario = Community.create!(
#   title: "Super Mario Bros 3",
#   img_url: "https://img.ibxk.com.br/2015/06/15/15150935995121.jpg?w=1120&h=420&mode=crop&scale=both"
# )

# Faker::Game.title
# 25.times do
#   Community.create!(title: Faker::Game.title)
#   puts "seeded with -- #{Community.last.title}"
#   uri = CGI.escape(Community.last.title)
#   # Community.last.img_url="https://loremflickr.com/320/240/#{uri}"
#   Community.update((Community.last.id), img_url: "https://loremflickr.com/320/240/#{uri}")
#   puts "cs::uri=#{uri}"
#   puts "cs::img_url=#{Community.last.img_url}"
# end
puts "------------- Seeding communities completed -------------------"

puts "------------- Seeding users -------------------"

require "open-uri"

file = URI.open('https://res.cloudinary.com/yuhri/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1630959256/Avatar-6-1_a3jpsm.jpg')
player_one = User.new(
  email: "player_one@icloud.com",
  password: "abc123",
  username: "parzival",
  full_name: "Wade Watts",
  language: "english",
  location: "Ohio",
  age: 27
)
player_one.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
player_one.save

file = URI.open('https://res.cloudinary.com/yuhri/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1630959256/image_spjcwq.jpg')
player_two = User.new(
  email: "player_two@icloud.com",
  password: "abc123",
  username: "juquinha",
  full_name: "Pinkman",
  language: "english",
  location: "Ohio",
  age: 27
)
player_two.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
player_two.save

puts "------------- Seeding users completed -------------------"
# players = []
# evaluations = []

# 2.times do

# 25.times do

#   players << User.new(
#     email: Faker::Internet.email,
#     # password: Faker::Alphanumeric.alphanumeric(number: 10),
#     password: "acb123",
#     username: "#{Faker::Hacker.verb}_#{Faker::Hacker.noun}",
#     full_name: Faker::Name.unique.name,
#     language: Faker::Nation.language,
#     location: Faker::Nation.capital_city,

#     age: rand(1..50)

#     age: rand(1..135)

#   )
#   players.last.save!
#   puts "...added #{players.last.username}, #{players.last.full_name}"

#   rand(3..10).times do
#     puts "-----seeding evals------"
#     evaluations << Evaluation.new(
#       communicability: rand(1..5),
#       tilt_resistance: rand(1..5),
#       manners: rand(1..5),
#       sociability: rand(1..5),
#       leadership: rand(1..5),
#       hotness: rand(1..5),
#       user_id: players.last.id
#     )
#     evaluations.last.save!
#     puts "player: #{players.last.username} has:
#       c: #{evaluations.last.communicability}
#       tr: #{evaluations.last.tilt_resistance}
#       m: #{evaluations.last.manners}
#       s: #{evaluations.last.sociability}
#       l: #{evaluations.last.leadership}
#       ht: #{evaluations.last.hotness} "
#   end
# end
puts "------------- Seeding users completed -------------------"

puts "------------- Seeding posts -------------------"
# Post.create!(user_id: player_one.id, community_id: mario.id, photo: "https://img.ibxk.com.br/2015/06/15/15150935995121.jpg?w=1120&h=420&mode=crop&scale=both", content: "Sou bicho brabo do Mario", like: 3, community_id: mario.id)
puts "------------- Seeding posts completed -------------------"
