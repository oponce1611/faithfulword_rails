class Sermon < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  mount_uploader :mp3, SermonUploader
  
  validates :title, presence: true
  validates :datetime, presence: true
  validates :preacher, presence: true
  
  scope :sorted, -> {order('datetime DESC')}
  scope :year, -> (year) {where("datetime >= ? and datetime <= ?", "#{year}-01-01 07:00:00", "#{year}-12-31 23:59:59 -0700")}
  
  def self.search(search)
    if search
      where("title LIKE ?", "%#{search}%")
    else
      scoped
    end
  end
end
