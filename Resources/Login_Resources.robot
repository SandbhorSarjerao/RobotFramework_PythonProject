*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://admin-demo.nopcommerce.com/login?ReturnUrl=/admin/

*** Keywords ***
Open Chrome Browser And Enter URL
    open browser    ${url}      ${browser}
    maximize browser window

Open Login Page
    go to   ${url}

Input UserName
    [Arguments]     ${UserName}
    input text      id:Email    ${UserName}

Input Password
    [Arguments]    ${Password}
    input text      id:Password     ${Password}

Click Login Button
    click element   xpath://button[contains(text(),'Log in')]

Click Logout Link
    click link      Logout

Error Message should be Displayed
    page should contain     Login was unsuccessful

Dashboard Page should be Displayed
    page should contain     Dashboard

Close Browsers
    close all browsers
