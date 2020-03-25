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


eric_gallery = Gallery.create(title: "Eric's Gallery", description: "The use of colors to create the most beautiful horizon", user_id: 1 )
brenda_gallery = Gallery.create(title: "Brenda's Gallery", description: "Airbrush on canvas ", user_id: 2 )
chris_gallery = Gallery.create(title: "Chirs's Gallery", description: "Use of lanyard", user_id: 3)


# image_url: "horizon.jpg", image_url: "https://www.istockphoto.com/vector/horizon-paint-gm964375828-263297825", 
sculpture = Category.create(name: "sculpting")
modern = Category.create(name: "modern")
lanyard = Category.create(name: "lanyard")

string = Medium.create(name: "string")
canvas = Medium.create(name: "canvas")
glass = Medium.create(name: "glasswork")

