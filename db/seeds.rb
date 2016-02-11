# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t1 = Todo.create(uid: 0, content: "We're at the beach so you should meet us here! I make a mean sandcastle. :)", done: true)

t2 = Todo.create(uid: 1, content: "Let's meet there!")

#u1 = User.create()