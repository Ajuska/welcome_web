from selenium import webdriver

driver_path = "/home/andreakopecna/Projects/welcome_web/drivers/geckodriver"

browser = webdriver.Firefox(executable_path=driver_path)
browser.get('http://localhost:8000')

assert 'Django' in browser.title
