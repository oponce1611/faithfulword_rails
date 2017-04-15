class SermonUploader < CarrierWave::Uploader::Base
  storage :aws
  def store_dir
    "Sermons/#{model.format}"
  end
  
  def extension_whitelist
    %w(mp3)
  end
end
