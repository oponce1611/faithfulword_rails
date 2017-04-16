class Sermon < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  mount_uploader :mp3, SermonUploader
  
  validates :title, presence: true
  validates :datetime, presence: true
  validates :preacher, presence: true
end
