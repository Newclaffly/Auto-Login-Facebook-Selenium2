*** Settings ***
Library          Selenium2Library
Documentation    Suite description
Resource         resource.robot

*** Test Cases ***
เปิด Browser
  Open Browser     https://www.facebook.com     chrome
  Input Text  id:email  ${USERNAME}
  Input Password  id:pass  ${PASSWORD}
  Submit Form  id:login_form
โพส์ข้อความ
  Click Element At Coordinates  xpath://body   0   0
  Click Element  xpath://*[@name="xhpc_message"]
  Input Text     xpath://*[@name="xhpc_message"]  Hello AM BOT PYTHON AUTO POST
  Sleep  3s
  Click Button  xpath://*[@data-testid="react-composer-post-button"]



