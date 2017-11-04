require_relative "base_page"

class MakePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def select_make()
    self.click_me(:xpath, "//*[text()[contains(., 'Mercedes-Benz')]]")
  end
end