class Translation < ApplicationRecord
  belongs_to :language
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates :title, presence: true
  validates :published, presence: true
  validates :body, presence: true
end
