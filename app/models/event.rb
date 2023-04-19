class Event < ApplicationRecord
  belongs_to :user
  validates :name, :location, :Date, presence: true
end

