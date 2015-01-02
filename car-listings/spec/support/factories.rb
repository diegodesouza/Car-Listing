FactoryGirl.define do
  factory (:manufacturer) do
    sequence :manufacturer do |n|
      "#{n}Ford"
    end
    sequence :country do |n|
      "#{n}Mexico"
    end
  end
end
