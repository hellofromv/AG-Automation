class BasePage
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end

  def go_to(link)
    @driver.navigate.to(link)
  end

  def input_val(how, string, sendValue)
    @driver.find_element(how, string).send_keys(sendValue)
  end

  def click_me(how, string)
    @driver.find_element(how, string).click
  end

  def wait_until(type, name, timeout: 5)
    @wait = Selenium::WebDriver::Wait.new(:timeout => 7)
    @wait.until { @driver.find_element(type, name).displayed? }
  end

  def quit()
    @driver.quit()
  end
end
