*** Settings ***
Resource    ../Ressources/BasePage.robot
Resource    ./TestData.robot
Resource    ../Ressources/PageObjects/LoginPage.robot
Library    DataDriver    file=../Ressources/loginData.xlsx   sheet_name=invalid_username
Test Setup      opening browser    ${url}
Test Teardown   Closing all browsers
Test Template    invalid username login
*** Variables ***
${url}     ${base_url}login

*** Test Cases ***
#right usename: tomsmith
#right password :   SuperSecretPassword!
invalidUsernameLoginUsingExcel using ${username} and ${password}

*** Keywords ***
invalid username login
    [Arguments]     ${username}    ${password}
    do login    ${username}    ${password}
    Message username error


