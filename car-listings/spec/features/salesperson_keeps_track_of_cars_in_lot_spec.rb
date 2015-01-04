require "rails_helper"

feature "salesperson records a car manufacturer ", %q(
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
  Acceptance Criteria
  [X] I must specify a manufacturer name and country.
  [X] If I do not specify the required information, I am presented with errors.
  [X] If I specify the required information, the manufacturer is recorded and
  I am redirected to the index of manufacturers
) do

  it "creates a manufacturer and gets redirected to root_path." do
    manufacturer = create :manufacturer

    visit root_path

    click_link "New Manufacturer"
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Save Manufacturer"

    visit root_path

    expect(page).to have_content manufacturer.name
    expect(page).to have_content manufacturer.country
    expect(page).to have_content "Home Manufacturer"

  end

  it "gets errors messages if filled incorrectly", focus: true do
    manufacturer = create :manufacturer

    visit root_path

    click_link "New Manufacturer"
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: " "
    click_on "Save Manufacturer"

    expect(page).to have_content "Country can't be blank"
  end
end
