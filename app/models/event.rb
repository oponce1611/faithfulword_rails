class Event < ApplicationRecord
  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
  
  scope :sorted, lambda {order("date ASC")}
  scope :upcoming, lambda {where("date >= ?", Time.zone.now - (60 * 60 * 24) )}
end
