class Customer < ApplicationRecord
  has_many :posts
  has_many :media_items
end
