# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'cgi'


# communities
puts "---------------Seeding Communities Started----------------"

Community.delete_all

lea_of_leg = Community.create!(title: "League of Legends")

# Faker::Game.title


25.times do
  Community.create!(title: Faker::Game.title)
  puts "seeded with -- #{Community.last.title}"
  uri = CGI.escape(Community.last.title)
  # Community.last.img_url="https://loremflickr.com/320/240/#{uri}"
  Community.update((Community.last.id), img_url: "https://loremflickr.com/320/240/#{uri}")
  puts "cs::uri=#{uri}"
  puts "cs::img_url=#{Community.last.img_url}"
end

puts "------------- Seeding communities completed -------------------"
