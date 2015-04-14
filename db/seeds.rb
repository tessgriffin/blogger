# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.create(title: "Sample Article Title", body: "This is the text for my article, woo hoo!")
Article.create(title: "101 ways of walking", body: "This is the ministry to silly walks")
Article.create(title: "Star Trek Characters", body: "Picard, Troy, Jeordi La Forge, Spock")
Article.create(title: "Star Wars Characters", body: "Luke Skywalker, Darth Vader")

puts "Created #{Article.count} articles"

