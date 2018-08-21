Writer.destroy_all
Language.destroy_all
Story.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Writer.create(pen_name: "Eric")
Writer.create(pen_name: "Prince")
Writer.create(pen_name: "Tony")
Writer.create(pen_name: "Tito")

Language.create(name: "Japanese")
Language.create(name: "English")
Language.create(name: "Chinese")
Language.create(name: "Russian")

Story.create(title: "The Hungry Fox")
Story.create(title:"The Sleepy Bear")
Story.create(title:"Mod Two Sucked")
Story.create(title:"Playground for Poop Heads")
