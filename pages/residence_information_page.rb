require_relative "base_page"

class ResidenceInformationPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def select_residence_status()
    self.wait_until(:css, "div#agselecthouseinfo")
    self.click_me(:css, "div#agselecthouseinfo")
    self.click_me(:xpath, "//*[text()[contains(., 'Living with Family')]]")
  end

  def input_street_address()
    self.click_me(:css, "input#aginputaddress")
    self.input_val(:css, "input#aginputaddress", "21041 Amberwick Lane")
  end

  def input_city()
    self.input_val(:css, "input#aginputcity", "Huntington Beach")
  end

  def select_state()
    self.click_me(:css, "div#agselectstate")
    self.click_me(:xpath, "//*[text()[contains(., 'California')]]")
  end

  def input_zip()
    self.click_me(:css, "input#aginputzip")
    self.input_val(:css, "input#aginputzip", "92646")
  end

  def input_move_in_date()
    self.input_val(:css, "input#aginputmoveindate", "072001")
  end

  def input_mortgage_rent()
    self.input_val(:css, "input#aginputpayment", "700")
  end

  def click_next()
    self.wait_until(:xpath, "//button[contains(text(), 'Next')]")
    self.click_me(:xpath, "//button[contains(text(), 'Next')]")
  end
end