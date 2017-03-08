class Bio < ApplicationRecord
  belongs_to :customer
  has_many :career_items
end
