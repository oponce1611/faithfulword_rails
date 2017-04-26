class Language < ApplicationRecord
  has_many :translations
  
  extend FriendlyId
  friendly_id :tongue, use: :slugged
  
  validates :tongue, presence: true,
                     uniqueness: { case_sensitive: false}
end
