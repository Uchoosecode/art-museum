class Gallery < ApplicationRecord
  validates :title, presence: true
  
  scope :long_titles, -> { where('LENGTH(title) > 20 ') }
  
  belongs_to :user
  has_many :artworks
  has_many :categories, through: :artworks
  has_many :media, through: :artworks
  has_many :comments, through: :artworks
  
  # has_one_attached :image, through: :artworks
  
  # scope :long_titles, -> { where('created_at >= ?', Time.now - 1.week) }
end
