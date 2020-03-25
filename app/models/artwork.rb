class Artwork < ApplicationRecord
    belongs_to :gallery
    has_many :comments
    has_many :categories
    has_many :mediums

end
