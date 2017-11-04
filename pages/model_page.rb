require_relative "base_page"

class ModelPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def select_model()
    self.wait_until(:xpath, "//*[text()[contains(., 'CLA')]]")
    self.click_me(:xpath, "//*[text()[contains(., 'CLA')]]")
  end

  def enter_location()
    self.click_me(:class, "input___26qtV")
    self.input_val(:class, "input___26qtV", "92618")
    self.click_me(:class, "blueButton___3S9-a")
  end
end