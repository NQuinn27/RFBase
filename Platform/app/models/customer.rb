class Customer < ApplicationRecord
  has_many :posts
  has_many :media_items
  has_many :events
  before_save :generate_api_key

  def generate_api_key
    if !api_key.present?
      api_key = ::SecureRandom.uuid
    end
  end
end
