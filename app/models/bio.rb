class Bio < ApplicationRecord
  belongs_to :customer
  has_many :career_items
  mount_uploader :photo, BioPhotoUploader
end
