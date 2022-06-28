*** Settings ***
Resource    ../Ressources/BasePage.robot
Resource    ./TestData.robot
Resource    ../Ressources/PageObjects/LoginPage.robot
Test Setup      opening browser    ${url}
Test Teardown   Closing all browsers
Test Template    invalid username login
*** Variables ***
${url}     ${base_url}login

*** Test Cases ***
#right usename: tomsmith
#right password :   SuperSecretPassword!
wrong user wrong pwd    wronguser1      wrongpwd1
wrong user empty pwd    wronguser2      ${empty}
wrong user right pwd    wronguser3      SuperSecretPassword!
empty user wrong pwd    ${empty}        wrongpwd2
empty user empty pwd    ${empty}        ${empty}
empty user right pwd    ${empty}        SuperSecretPassword!

*** Keywords ***
invalid username login
    [Arguments]     ${username}    ${password}
    do login    ${username}    ${password}
    Message username error


