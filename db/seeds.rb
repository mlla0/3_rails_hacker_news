# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Link.destroy_all
Comment1.destroy_all
Comment2.destroy_all

20.times do |i|
	User.create(id: i + 1, name: Faker::StrangerThings.character)
end

40.times do |i|
	u = User.find(1 + rand(20))
	l = Link.new(id: i + 1, url: Faker::Internet.url)
	l.user = u
	l.save
end

30.times do |i|
	u = User.find(1 + rand(20))
	l = Link.find(1 + rand(40))
	c = Comment1.new(id: i + 1, content: Faker::Shakespeare.king_richard_iii_quote)
	c.user = u
	c.link = l
	c.save
end

50.times do |i|
	u = User.find(1 + rand(20))
	c1 = Comment1.find(1 + rand(30))
	c2 = Comment2.new(id: i + 1, content: Faker::Shakespeare.hamlet_quote)
	c2.user = u
	c2.comment1 = c1
	c2.save
end