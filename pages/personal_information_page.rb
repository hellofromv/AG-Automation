require_relative "base_page"

class PersonalInformationPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def input_firstname()
    self.wait_until(:xpath, "//*[text()[contains(., 'First Name')]]")

    self.input_val(:xpath, "//*[text()[contains(., 'First Name')]]", "Victoria")
  end

  def input_lastname()
    self.input_val(:xpath, "//*[text()[contains(., 'Last Name')]]", "Tran")
  end

  def input_birthdate()
    self.input_val(:xpath, "//*[text()[contains(., 'Date of Birth')]]", "02111992")
  end

  def input_phone_number()
    self.input_val(:id, "mobilePhoneTextField", "7143693949")
  end

  def click_login_instead_of_signup()
    self.click_me(:xpath, "//div[@class='creditLoginHeader___1SeLk']/div[2]/a")
  end

  def input_email_address()
    self.input_val(:css, "input#emailTextField", "ilovecheese@mailinator.com")
  end

  def input_password()
    self.input_val(:css, "input#passwordTextField", "Welcome1")
  end

  def click_login_and_continue()
    self.wait_until(:xpath, "//div[@class='bottomSection___2yf5o' and button='Log In and Continue']")
    self.click_me(:xpath, "//div[@class='bottomSection___2yf5o' and button='Log In and Continue']")
  end
end