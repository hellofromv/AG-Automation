require_relative "base_page"

class TrimPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def select_trim()
    self.wait_until(:xpath, "//*[text()[contains(., ' Cirrus White')]]")
    self.click_me(:xpath, "//*[text()[contains(., ' Cirrus White')]]")
  end
end