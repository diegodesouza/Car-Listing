class Car < ActiveRecord::Base
  belongs_to :manufacturer,
    inverse_of: :cars

  validates_presence_of :manufacturer
  validates_presence_of :color
  validates_presence_of :year
  validates_presence_of :mileage
end
