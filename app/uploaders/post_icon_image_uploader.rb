class PostIconImageUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_icon_picture']

  version :standard do
    process :resize_to_fill => [250, 250, :north]
  end

  version :thumbnail do
    resize_to_fit(50, 50)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
