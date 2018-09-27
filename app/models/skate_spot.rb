class SkateSpot < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :likes
  has_many :comments
  has_many :bookmarks
end
