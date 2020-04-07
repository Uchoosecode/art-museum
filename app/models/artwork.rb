class Artwork < ApplicationRecord
    belongs_to :gallery
    belongs_to :category 
    belongs_to :medium
    
    has_one_attached :image
    
    has_many :comments

    validates :gallery_id, presence: true

    #scope method to define search_by
    def self.search_by(search_term)
        where ("LOWER(title) LIKE :search_term"), search_term: "%#{search_term.downcase}%"
    end

end
    