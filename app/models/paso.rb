class Paso < ApplicationRecord
  validates :day, presence: true
  validates :destination, presence: true
end
