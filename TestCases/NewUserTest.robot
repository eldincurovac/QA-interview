*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  Adding the new user
    [tags]  Smoke
    Create Webdriver    Chrome  executable_path=C:/Users/abh/Downloads/chromedriver_win32/chromedriver.exe
    Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  Chrome
    Wait Until Element Is Visible  name:username  timeout=5
    Input Text  name:username  Admin
    Input Password  name:password  admin123
    Click Element   css:button[type="submit"]
    Wait Until Element Is Visible   id:app  timeout=5
    Click Link   xpath=//a[@href='/web/index.php/admin/viewAdminModule']
    Wait Until Element Is Visible   id:app  timeout=5
    Click Element   xpath=//button[@class="oxd-button oxd-button--medium oxd-button--secondary"]
    Click Element   xpath=//i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"]
    Click Element   xpath: //*[contains(text(), "ESS")]
    Input Text  xpath=//div[@class="oxd-autocomplete-text-input oxd-autocomplete-text-input--active"] Eldin




*** Keywords ***