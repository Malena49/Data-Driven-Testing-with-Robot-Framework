*** Settings ***
Library           SeleniumLibrary
Resource    ../BasePage.robot
*** Variables ***
${username_filed}   id:username
${password_filed}   id:password
${submit_button}    css:button[type="submit"]
${message_locator}    id:flash
${username_error}    Your username is invalid!
${password_error}   Your password is invalid!
${message_success}  You logged into a secure area!
*** Keywords ***
enter username
    [Arguments]    ${username}
    Clear filed and enter text    ${username_filed}    ${username}
enter password
    [Arguments]    ${password}
    Clear filed and enter password    ${password_filed}    ${password}
click on login button
    click on an element    ${submit_button}

do login
    [Arguments]    ${username}  ${password}
    enter username    ${username}
    enter password    ${password}
    click on login button

Message username error
    element should contain    ${message_locator}    ${username_error}

Message password error
    element should contain    ${message_locator}    ${password_error}

Message login success
    element should contain    ${message_locator}    ${message_success}

