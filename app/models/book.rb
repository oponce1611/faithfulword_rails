class Book < ApplicationRecord
  has_many :chapters
  validates :title, presence: true, uniqueness: true
  validates :total_chapters, presence: true
end
