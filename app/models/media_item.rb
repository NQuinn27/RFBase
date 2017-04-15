require 'carrierwave/orm/activerecord'
class MediaItem < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, MediaItemImageUploader
end
