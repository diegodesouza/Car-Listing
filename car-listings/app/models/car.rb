class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :make, presence: true
  validates :color, presence: true
  validates :year, presence: true
  validates :mileage, presence: true
  validates :country, presence: true
end
