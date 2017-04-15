class Sermon < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  mount_uploader :mp3, SermonUploader
end
