FactoryGirl.define do
  factory :manufacturer do
    name "Ford"
    country "Mexico"
  end

  factory :car do
    manufacturer "Fiat"
    color "White"
    year "1981"
    mileage "80,000"
    description "Mint condition"
    country "Italy"
  end
end
