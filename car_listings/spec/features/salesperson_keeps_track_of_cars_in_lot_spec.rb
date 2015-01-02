require "rails_helper"

feature "salesperson records a car manufacturer ", %q(
As a car salesperson
I want to record a car manufacturer
So that I can keep track of the types of cars found in the lot
Acceptance Criteria
[ ] I must specify a manufacturer name and country.
[ ] If I do not specify the required information, I am presented with errors.
  [ ] If I specify the required information, the manufacturer is recorded and
  I am redirected to the index of manufacturers
  ) do

    it "specifies a manufacturer for his cars." do

      visit '/'

      fill_in "Manufacturer", with: "Honda"
      fill_in "Country", with: "Mexico"

      expect(page).to have_content "Honda"
      expect(page).to have_content "Mexico"
    end

    it "gets errors messages if filled incorrectly" do

    end

    it "gets redirected to home page after specifying information" do

    end
  end
