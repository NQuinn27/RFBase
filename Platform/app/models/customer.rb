require 'securerandom'
class Customer < ApplicationRecord
  has_many :posts
  has_many :media_items

  before_save :generate_api_key

  def generate_api_key
    if !self.api_key.present?
      self.api_key = ::SecureRandom.uuid
    end
  end
end
