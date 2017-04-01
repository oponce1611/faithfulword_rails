class Language < ApplicationRecord
  has_many :translations
  validates :tongue, presence: true, uniqueness: { case_sensitive: false}
end
