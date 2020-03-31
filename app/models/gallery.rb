class Gallery < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :user
  has_many :artworks
  has_many :categories, through: :artworks
  has_many :media, through: :artworks
  has_many :comments

  def category_name=(name)
    self.category = Category.find_or_create_by(name: name)
  end
    
  def category_name
    self.category ? self.category.name : nil
  end

  def medium_name=(name)
    self.medium = Medium.find_or_create_by(name: name)
  end

  def medium_name
    self.medium ? self.medium.name : nil
  end

end
