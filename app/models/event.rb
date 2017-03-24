class Event < ApplicationRecord
  scope :sorted, lambda {order("date ASC")}
  scope :upcoming, lambda {where("date >= ?", Time.now - (60 * 60 * 24) )}
end
