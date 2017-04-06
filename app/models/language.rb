class Language < ApplicationRecord
  has_many :translations
  validates :tongue, presence: true, uniqueness: { case_sensitive: false}
  
  extend FriendlyId
  friendly_id :tongue, use: :slugged
end
