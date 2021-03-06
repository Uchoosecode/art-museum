# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
eric = User.create(name: "Eric", email: "eric@email.com", password: "ericgallery", bio: "Waterbrushes, oil-based painter")
brenda = User.create(name: "Brenda", email: "brenda@email.com", password: "brendagallery", bio: "Sculpture, clay-models")
chris = User.create(name: "Chris", email: "chris@email.com", password: "chrisgallery", bio: "canvas, graphic-design")


Medium.create(name: "Architecture")
Medium.create(name: "Carpentry")
Medium.create(name: "Ceramics")
Medium.create(name: "Drawing")
Medium.create(name: "Electronic")
Medium.create(name: "Film")
Medium.create(name: "Food")
Medium.create(name: "Glass")
Medium.create(name: "Light")
Medium.create(name: "Literature")
Medium.create(name: "Painting")
Medium.create(name: "Photography")
Medium.create(name: "Sculpture")
Medium.create(name: "Textiles")
Medium.create(name: "Graffiti")
Medium.create(name: "Graphic Design")
Medium.create(name: "other")


Category.create(name: "Garden")
Category.create(name: "Screenshot")
Category.create(name: "Test")
Category.create(name: "other")
Category.create(name: "Puppies")
Category.create(name: "Airbrush")
Category.create(name: "Canvas")
Category.create(name: "Painting")