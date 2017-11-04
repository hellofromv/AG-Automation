require_relative "base_page"

class HomePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def start_credit_app()
    self.click_me(:xpath, "//*[text()[contains(., 'NEXT')]]")
  end
end