from selenium import webdriver
from LoginPage import LoginPage

driver = webdriver.Chrome()
driver.implicitly_wait(10)
driver.get("https://example.com")

login_page = LoginPage(driver)
login_page.enterpassword("anum")
login_page.enterpassword("test")
login_page.clicklogin()