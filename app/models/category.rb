class Category < ApplicationRecord
  belongs_to :gallery
  belongs_to :artwork
end
