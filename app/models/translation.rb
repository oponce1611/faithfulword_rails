class Translation < ApplicationRecord
  belongs_to :language
  
  extend FriendlyId
  friendly_id :title, use: :slugged
end
