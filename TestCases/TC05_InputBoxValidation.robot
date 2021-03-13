*** Settings ***
Library     SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com/en/login?returnurl=%2Fen%2Fdemo


*** Test Cases ***
VerifyPageTitleTest
    open browser    ${url}      ${browser}
    maximize browser window
    title should be    Login - nopCommerce
    ${txt_Username}     set variable     id:Username

    element should be visible       ${txt_Username}
    element should be enabled       ${txt_Username}

    input text    ${txt_Username}   patilmaheshs1985@gmail.com
    sleep    5
    clear element text      ${txt_Username}
    sleep    3
    close browser