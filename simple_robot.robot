*** Settings ***
Library          Selenium2Library
Documentation    Suite description

*** Test Cases ***
เปิด Browser
  Open Browser     https://www.google.com     chrome
พิมพ์ข้อความที่ต้องการค้นหา "test case"
  Input Text  id:lst-ib  test case
กดปุ่ม "Google search"
  submit Form  xpath://*[@name="f"]