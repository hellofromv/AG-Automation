require_relative "base_page"

class ReviewVehiclePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def review_vehicle()
    self.wait_until(:xpath, "//button[contains(text(), 'Next')]")
    self.click_me(:xpath, "//button[contains(text(), 'Next')]")
  end
end