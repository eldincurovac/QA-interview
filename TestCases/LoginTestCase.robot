*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  verify that user is logged in
    [tags]  Smoke
    Create Webdriver    Chrome  executable_path=C:/Users/abh/Downloads/chromedriver_win32/chromedriver.exe
    Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  Chrome
    Wait Until Element Is Visible  name:username  timeout=5
    Input Text  name:username  Admin
    Input Password  name:password  admin123
    Click Element   css:button[type="submit"]
    Element Should Be Visible   id:app  timeout=5

    Close Browser


*** Keywords ***