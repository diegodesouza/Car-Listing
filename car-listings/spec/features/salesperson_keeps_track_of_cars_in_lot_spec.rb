require "rails_helper"

feature "salesperson records a car manufacturer ", %q(
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
  Acceptance Criteria
  [X] I must specify a manufacturer name and country.
  [ ] If I do not specify the required information, I am presented with errors.
  [ ] If I specify the required information, the manufacturer is recorded and
  I am redirected to the index of manufacturers
) do

  it "specifies a manufacturer." do
    manufacturer = create :manufacturer

    visit root_path

    click_link "Add Manufacturer"
    fill_in "Manufacturer", with: manufacturer.manufacturer
    fill_in "Country", with: manufacturer.country
    click_on "Add it"

    visit root_path

    expect(page).to have_content manufacturer.manufacturer
    expect(page).to have_content manufacturer.country
  end

  it "gets errors messages if filled incorrectly" do
    manufacturer = create :manufacturer

    visit root_path

    click_link "Add Manufacturer"
    fill_in "Manufacturer", with: manufacturer.manufacturer
    fill_in "Country", with: " "
    click_on "Add it"

    expect(page).to have_content "Country can't be blank"
  end
end
