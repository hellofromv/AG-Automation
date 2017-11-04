require_relative "base_page"

class ReviewDetailsPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def review_details()
    self.wait_until(:xpath, "//button[contains(text(), 'NEXT')]")
    self.click_me(:xpath, "//button[contains(text(), 'NEXT')]")
  end
end