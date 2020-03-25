class Gallery < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many_attached :images
  
  belongs_to :user
  has_many :artworks
  has_many :categories
  has_many :media, through: :categories
  has_many :comments

  # def category_name=(name)
  #   self.category = Category.find_or_create_by(name: name)
  # end

  # def category_name
  #    self.category ? self.category.name : nil
  # end
end
