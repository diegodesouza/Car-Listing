class Manufacturer < ActiveRecord::Base
  has_many :cars

  validates_presence_of :manufacturer
  validates_presence_of :country
end
