class SermonUploader < CarrierWave::Uploader::Base
  storage :aws
  def store_dir
    "Sermons/#{model.format}"
  end
  
  def extension_whitelist
    %w(mp3)
  end
  
  def filename
    "#{rename(model.title, model.datetime)}.#{file.extension}" if original_filename.present?
  end
  
  protected
  
  def rename(title, date)
    title = title.gsub('&', "and")
    title =  title.gsub(/[!:?@%.,'"]/,'')
    title = title.split.map { |i| i.capitalize }.join
    date = date.strftime("%Y%m%d%p").chomp 'M'
    file_name = date + "_" + title
    file_name
  end

end
