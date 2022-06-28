*** Settings ***
Resource    ../Ressources/BasePage.robot
Resource    ./TestData.robot
Resource    ../Ressources/PageObjects/LoginPage.robot
Library    DataDriver    file=../Ressources/loginData.xlsx   sheet_name=invalid_password
Test Setup      opening browser    ${url}
Test Teardown   Closing all browsers
Test Template       invalid password login

*** Variables ***
${url}     ${base_url}login

*** Test Cases ***
#right usename: tomsmith
#right password :   SuperSecretPassword!
invalidPasswordLoginUsingExcel using ${username} and ${password}

*** Keywords ***
invalid password login
    [Arguments]     ${username}    ${password}
    do login    ${username}    ${password}
    Message password error


