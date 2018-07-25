# -*- coding: utf-8 -*-

from selenium import webdriver
driver = webdriver.Chrome('webdriver/chromedriver.exe')
driver.get('https://www.youtube.com')
#search "Wrong Say do season 2"

input_search = driver.find_element_by_id("search")
btn_ok = driver.find_element_by_id("search-icon-legacy")

input_search.send_keys("Wrong Say do season 2")

btn_ok.submit()