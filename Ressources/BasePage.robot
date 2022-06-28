*** Settings ***
Library           SeleniumLibrary
Resource    ../Tests/TestData.robot
*** Keywords ***
Opening browser
    [Arguments]    ${url}
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...    download.default_directory=${DOWNLOAD_PATH}
    ...    profile.default_content_setting_values.geolocation=1
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Go to  ${url}

Closing all browsers
    close all browsers

Click on an element
    [Arguments]    ${locator}
    wait until element is visible    ${locator}
    click element    ${locator}

Clear filed and enter text
    [Arguments]    ${locator}   ${text}
    wait until element is visible    ${locator}
    input text    ${locator}    ${text}     clear=True

Clear filed and enter password
    [Arguments]    ${locator}   ${text}
    wait until element is visible    ${locator}
    input password    ${locator}    ${text}     clear=True
