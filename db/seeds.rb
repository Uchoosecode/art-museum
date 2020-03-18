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