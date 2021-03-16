*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup    Open Chrome Browser And Enter URL
Suite Teardown    Close Browsers
Test Template    Invalid Login


*** Test Cases ***                  UserName                Password
Valid user empty password           admin@yourstore.com     ${EMPTY}
Valid user wrong password           admin@yourstore.com     xyz
Wrong user valid password           xyz@yourstore.com       admin
Wrong user empty password           xyz@yourstore.com       ${EMPTY}
Wrong user wrong password           xyz@yourstore.com       xyz



*** Keywords ***
Invalid Login
    [Arguments]    ${UserName}      ${Password}
    Input UserName      ${UserName}
    Input Password      ${Password}
    Click Login Button
    Error Message should be Displayed

