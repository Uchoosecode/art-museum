class Gallery < ApplicationRecord
  validates :title, presences: true, uniqueness: true
  belongs_to :user
end
