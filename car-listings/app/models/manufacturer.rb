class Manufacturer < ActiveRecord::Base
  has_many :cars,
    inverse_of: :manufacturer

  validates :name, presence: true
  validates :country, presence: true

  def self.names
    [
      'Acura',
      'Audi',
      'BMW',
      'Buick',
      'Cadillac',
      'Chrysley',
      'Dodge',
      'Eagle',
      'Ferrari',
      'Fiat',
      'GMC',
      'Honda',
      'Hummer',
      'Hyundai',
      'Infiniti',
      'Isuzu',
      'Jaguar',
      'Jeep',
      'Kia',
      'Lamborghini',
      'Land Rover',
      'Lexus',
      'Lincoln',
      'Mazda',
      'Mercedes-Benz',
      'Mercury',
      'Mitsubishi',
      'Nissan',
      'Oldsmobile',
      'Peugeot',
      'Pontiac',
      'Porche',
      'Saab',
      'Saturn',
      'Subaru',
      'Suzuki',
      'Toyota',
      "Volkswagen",
      'Volvo'
    ]
  end
end
