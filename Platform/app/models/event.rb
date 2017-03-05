require 'carrierwave/orm/activerecord'
class Event < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, EventImageUploader
end
