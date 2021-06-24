from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
import pyttsx3

driver = webdriver.Chrome(executable_path="C:/Windows/chromedriver")

    # driver = webdriver.Safari()
driver.get("https://web.whatsapp.com/")

engine = pyttsx3.init()
print("Scan the QR Code to Access and press enter")
engine.runAndWait()
wait = WebDriverWait(driver, 1)
input()
target = '"Name"'
text = "Msg"

x_arg = '//span[contains(@title,' + target + ')]'
print("Group Selected")
group_title = wait.until(EC.presence_of_element_located((
By.XPATH, x_arg)))

group_title.click()
print("Clicked")

time.sleep(2)
input_box = driver.find_element_by_xpath('//*[@id="main"]/footer/div[1]/div[2]/div/div[2]')
for i in range(2):
    input_box.send_keys(text + Keys.ENTER)
    time.sleep(0.2)