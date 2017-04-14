class Customer < ApplicationRecord

  has_many :posts
  has_many :media_items
  has_many :events

  after_initialize :generate_api_key, if: :new_record?

  def generate_api_key
    self.api_key = ::SecureRandom.uuid
  end

end
