require "rails_helper"

feature "salesperson records a car manufacturer ", %q(
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot

  Acceptance Criteria
  [X] I must specify the manufacturer, color, year, and mileage of the car
   (an association between the car and an existing manufacturer should be created).
  [X] Only years from 1920 and above can be specified.
  [X] I can optionally specify a description of the car.
  [X] If I enter all of the required information in the required formats,
   the car is recorded and I am presented with a notification of success.
  [X] If I do not specify all of the required information in the required formats,
    the car is not recorded and I am presented with errors.
  [X] Upon successfully creating a car, I am redirected back to the index of cars.
  ) do

    it "successfully creates a new car record" do
      Manufacturer.create!(name: "Acura", country: "Brazil")

      visit "/"

      click_on "New Car"

      select "Acura", from: "Manufacturer"
      fill_in "Color", with: "Black"
      select "2000"
      fill_in "Mileage", with: "100_000"
      fill_in "Description", with: "Excellent Condition"

      click_button "Save Car"

      expect(page).to have_content "Acura"
      expect(page).to have_content "Black"
      expect(page).to have_content "2000"
      expect(page).to have_content "100_000"
      expect(page).to have_content "Excellent Condition"
      expect(page).to have_content "You have successfully created a car"
    end

    it "unsuccessfully creates a new car" do
    Manufacturer.create!(name: "Acura", country: "Brazil")

    visit "/"

    click_on "New Car"

    select "Acura", from: "Manufacturer"
    fill_in "Color", with: ""
    select "2000"
    fill_in "Mileage", with: "100_000"
    fill_in "Description", with: "Excellent Condition"
    save_and_open_page

    click_button "Save Car"

    expect(page).to have_content "Color can't be blank"
  end
end
