# -*- coding: utf-8 -*-

from selenium import webdriver
driver = webdriver.Chrome('webdriver/chromedriver.exe')
driver.get('https://www.google.com')

input_search = driver.find_element_by_id("lst-ib")
btn_ok = driver.find_element_by_name("btnK")
#test case 4
input_search.send_keys("test case")
#test case 5
#btn_ok.click()
btn_ok.submit()

driver.close()