class Customer < ApplicationRecord

  has_many :posts
  has_many :media_items
  has_many :events

end
