require_relative "spec_helper"

describe "Automated Credit Application" do
  it "Should automate the creation of a new credit application" do
    app = HomePage.new @driver
    app.go_to("https://www-staging.autogravity.com/")
    app.start_credit_app()

    app = MakePage.new @driver
    app.select_make()

    app = ModelPage.new @driver
    app.select_model()
    app.enter_location()

    app = TrimPage.new @driver
    app.select_trim()

    app = ReviewVehiclePage.new @driver
    app.review_vehicle()

    app = ReviewDetailsPage.new @driver
    app.review_details()

    app = PersonalInformationPage.new @driver
    app.input_firstname()
    app.input_lastname()
    app.input_birthdate()
    app.input_phone_number()
    app.click_login_instead_of_signup()
    app.input_email_address()
    app.input_password()
    app.click_login_and_continue()

    app = ResidenceInformationPage.new @driver
    app.select_residence_status()
    app.input_street_address()
    app.input_city()
    app.select_state()
    app.input_zip()
    app.input_move_in_date()
    app.input_mortgage_rent()
    app.click_next()

    app = EmploymentInformationPage.new @driver
    app.select_employment_status()
    app.input_employer_name()
    app.input_title()
    app.input_start_date()
    app.input_employer_phone()
    app.input_gross_monthly_income()
    app.click_next()
  end
end