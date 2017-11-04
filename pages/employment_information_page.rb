require_relative "base_page"

class EmploymentInformationPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def select_employment_status()
    self.wait_until(:css, "div#agselectemployment-status")
    self.click_me(:css, "div#agselectemployment-status")
    self.click_me(:xpath, "//div[contains(text(), 'Full Time')]")
  end

  def input_employer_name()
    self.click_me(:css, "input#employer-name")
    self.input_val(:css, "input#employer-name", "AutoGravity")
  end

  def input_title()
    self.input_val(:css, "input#employee-title", "QA UAT")
  end

  def input_start_date()
    self.input_val(:css, "input#employee-start-date", "102015")
  end

  def input_employer_phone()
    self.input_val(:css, "input#employer-phone-number", "9493928777")
  end

  def input_gross_monthly_income()
    self.input_val(:css, "input#gross-monthly-income", "7000")
  end

  def click_next()
    self.wait_until(:xpath, "//button[contains(text(), 'Next')]")
    self.click_me(:xpath, "//button[contains(text(), 'Next')]")
  end
end