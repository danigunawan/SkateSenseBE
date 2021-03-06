class SkateSpot < ApplicationRecord
  mount_uploaders :avatars, AvatarUploader
  has_many :skate_spot_attachments
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks
end
