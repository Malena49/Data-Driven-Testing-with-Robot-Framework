*** Settings ***
Library           SeleniumLibrary
Resource    ../Ressources/BasePage.robot
Resource    ./TestData.robot
Test Setup      opening browser    ${url}
Test Teardown   Closing all browsers
*** Variables ***
${url}     ${base_url}downldoad

*** Test Cases ***
download first element
    click link    download/onboard access.png


*** Keywords ***


