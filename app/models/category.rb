class Category < ApplicationRecord

  has_many :galleries, through: :artworks
  has_many :artworks

  validates :name, presence: true
  
end