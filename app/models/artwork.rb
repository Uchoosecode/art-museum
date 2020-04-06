class Artwork < ApplicationRecord
    belongs_to :gallery
    belongs_to :category 
    belongs_to :medium
    
    has_one_attached :image
    
    has_many :comments

    validates :gallery_id, presence: true

end
    