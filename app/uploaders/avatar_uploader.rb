class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :standard do 
    resize_and_pad(150, 150) 
  end

  version :thumbnail do 
    resize_and_pad(70, 70) 
  end 

  def public_id 
    "#{model.name}_avatar" 
  end
end
