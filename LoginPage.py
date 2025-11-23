from selenium import webdriver
from selenium.webdriver.common.by import By

class LoginPage:
    def __init__(self, driver):
        self.driver = driver

        # Locators
        self.username = "username"
        self.password_id = "password"
        self.login_btn_id = "loginbtn"

    def enterusername(self, user):
        self.driver.find_element(By.ID, self.username).send_keys(user)

    def enterpassword(self, password):
        self.driver.find_element(By.ID, self.password_id).send_keys(password)

    def clicklogin(self):
        self.driver.find_element(By.ID, self.login_btn_id).click()