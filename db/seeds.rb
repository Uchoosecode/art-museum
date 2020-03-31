# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# eric = User.create(name: "Eric", email: "eric@email.com", password: "ericgallery", bio: "Waterbrushes, oil-based painter")
# brenda = User.create(name: "Brenda", email: "brenda@email.com", password: "brendagallery", bio: "Sculpture, clay-models")
# chris = User.create(name: "Chris", email: "chris@email.com", password: "chrisgallery", bio: "canvas, graphic-design")


# eric_gallery = Gallery.create(title: "Eric's Gallery", description: "The use of colors to create the most beautiful horizon", user_id: 1 )
# brenda_gallery = Gallery.create(title: "Brenda's Gallery", description: "Airbrush on canvas ", user_id: 2 )
# chris_gallery = Gallery.create(title: "Chirs's Gallery", description: "Use of lanyard", user_id: 3)


# artwork_1 = Artwork.create(title: "Artwork 1", category: "Building", medium: "architecture", image_url: "horizon.jpg", comment: "No comment", gallery_id: 1)

Medium.create(name: "Architecture", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Carpentry", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Ceramics", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Drawing", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Electronic", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Film", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Food", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Glass", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Light", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Literature", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Painting", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Photography", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Sculpture", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Textiles", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Graffiti", gallery_id: 1, artwork_id: 1)
Medium.create(name: "Graphic Design", gallery_id: 1, artwork_id: 1)
Medium.create(name: "other", gallery_id: 1, artwork_id: 1)
