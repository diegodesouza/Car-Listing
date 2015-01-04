require "rails_helper"

feature "salesperson records a car manufacturer ", %q(
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot

  Acceptance Criteria
  [ ] I must specify the manufacturer, color, year, and mileage of the car
   (an association between the car and an existing manufacturer should be created).
  [ ] Only years from 1920 and above can be specified.
  [ ] I can optionally specify a description of the car.
  [ ] If I enter all of the required information in the required formats,
   the car is recorded and I am presented with a notification of success.
  [ ] If I do not specify all of the required information in the required formats,
    the car is not recorded and I am presented with errors.
  [ ] Upon successfully creating a car, I am redirected back to the index of cars.
  ) do

    it "creates a new car record" do

      car = create :car

      visit car_path

      click_on "Add Car"
      save_and_open_page

      fill_in "Manufacturer", with: car.manufacturer
      fill_in "Color", with: car.color
      fill_in "Year", with: car.year
      fill_in "Mileage", with: car.mileage
      fill_in "Description", with: car.description
      fill_in "Country", with: car.country

      click_button "Add car"

      expect(page).to have_content car.manufacturer
      expect(page).to have_content car.color
      expect(page).to have_content car.year
      expect(page).to have_content car.mileage
      expect(page).to have_content car.description
      expect(page).to have_content car.country
      expect(page).to have_content "You have successfully created a car"
    end
  end
