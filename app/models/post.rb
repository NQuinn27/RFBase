class Post < ApplicationRecord
  belongs_to :customer

  mount_uploader :header_image, PostImageUploader
  mount_uploader :icon_image, PostIconImageUploader

end
