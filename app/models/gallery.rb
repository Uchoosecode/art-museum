class Gallery < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :user
  has_many :artworks
  has_many :categories, through: :artworks
  has_many :media, through: :artworks
  has_many :comments, through: :artworks

  # has_one_attached :image, through: :artworks

end
