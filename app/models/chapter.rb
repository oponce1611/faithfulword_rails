class Chapter < ApplicationRecord
  belongs_to :book
  
  validates :book_id, presence: true, uniqueness: true
  validates :chapter, presence: true, uniqueness: true
end
