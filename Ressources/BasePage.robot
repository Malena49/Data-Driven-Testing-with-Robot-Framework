*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Opening browser
    [Arguments]    ${url}
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...    download.default_directory=C:\\test\\
    ...    profile.default_content_setting_values.geolocation=1
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Go to  ${url}

Closing all browsers
    close all browsers
