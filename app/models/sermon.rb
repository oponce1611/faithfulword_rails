class Sermon < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :datetime, presence: true
  validates :preacher, presence: true
  
  scope :recent, -> {order('created_at DESC')}
  scope :sorted, -> {order('datetime DESC')}
  scope :year, -> (year) {where("datetime >= ? and datetime <= ?", "#{year}-01-01 07:00:00", "#{year}-12-31 23:59:59 -0700")}
  
  def self.search(search)
    if search
      where('title ILIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  def size
    S3_BUCKET.object(self.mp3.sub("//faithfulword.s3-us-west-1.amazonaws.com/","")).size if S3_BUCKET.object(self.mp3.sub("//faithfulword.s3-us-west-1.amazonaws.com/","")).exists? 
  end
end
