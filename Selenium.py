from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Chrome()
driver.get("https://google.com")
print(driver.title)

    # def verify_tittle(self,expected_title,timeout=10):
    #      WebDriverWait(self.driver,timeout).until(WebDriverWait.title_contains(expected_title))