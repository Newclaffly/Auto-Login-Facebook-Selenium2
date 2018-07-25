*** Settings ***
Library          Selenium2Library
Documentation    TEST LOGIN
*** Variables ***
${USERNAME_VALID}       demo
${PASSWORD_VALID}       mode
${USERNAME_BLANK}
${PASSWORD_BLANK}
*** Test Cases ***
Case1:Username&Password Valid
  Open Browser     http://dekdee.buu.ac.th/~jirayu.ar/login_demo/     chrome
  Input Text  id:username_field  ${USERNAME_VALID}
  ${box text}=  GET Value  id:username_field
  Should Be Equal  ${USERNAME_VALID}  ${box text}
  Input Text  id:password_field    ${PASSWORD_VALID}
  ${box text}=  GET Value  id:password_field
  Submit Form  name:login_form
  Close Browser
Case2:Username&Password Blank
  Open Browser     http://dekdee.buu.ac.th/~jirayu.ar/login_demo/     chrome
  Input Text  id:username_field  ${USERNAME_BLANK}
  ${box text}=  GET Value  id:username_field
  Should Be Equal  ${USERNAME_BLANK}  ${box text}
  Input Text  id:password_field    ${PASSWORD_BLANK}
  ${box text}=  GET Value  id:password_field
  Submit Form  name:login_form
  Close Browser
Case3:Usernamecorrect&Passwordincorrect
  Open Browser     http://dekdee.buu.ac.th/~jirayu.ar/login_demo/     chrome
  Input Text  id:username_field  ${USERNAME_VALID}
  ${box text}=  GET Value  id:username_field
  Input Text  id:password_field    ${PASSWORD_BLANK}
  ${box text}=  GET Value  id:password_field
  Submit Form  name:login_form
  Close Browser
Case4:Usernameincorrect&PasswordCorect
  Open Browser     http://dekdee.buu.ac.th/~jirayu.ar/login_demo/     chrome
  Input Text  id:username_field  ${USERNAME_BLANK}
  ${box text}=  GET Value  id:username_field
  Input Text  id:password_field    ${PASSWORD_VALID}
  ${box text}=  GET Value  id:password_field
  Submit Form  name:login_form
  Close Browser









