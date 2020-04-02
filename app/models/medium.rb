class Medium < ApplicationRecord
  validates :name, presence: true

  has_many :artworks
  has_many :galleries, through: :artworks
end
