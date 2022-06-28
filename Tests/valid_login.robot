*** Settings ***
Resource    ../Ressources/BasePage.robot
Resource    ./TestData.robot
Resource    ../Ressources/PageObjects/LoginPage.robot
Library    DataDriver    file=../Ressources/loginData.xlsx   sheet_name=valid_login
Test Setup      opening browser    ${url}
Test Teardown   Closing all browsers
Test Template       valid login

*** Variables ***
${url}     ${base_url}login

*** Test Cases ***
#right usename: tomsmith
#right password :   SuperSecretPassword!
validLoginUsingExcel using ${username} and ${password}

*** Keywords ***
valid login
    [Arguments]     ${username}    ${password}
    do login    ${username}    ${password}
    Message login success


