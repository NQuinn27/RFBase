require 'carrierwave/orm/activerecord'
class MediaItem < ApplicationRecord
  mount_uploader :image, MediaItemImageUploader
end
