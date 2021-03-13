*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com/en/login?returnurl=%2Fen%2Fdemo


*** Test Cases ***
VerifyPageTitleTest
    open browser    ${url}      ${browser}
    maximize browser window
    title should be    Login - nopCommerce
    close browser