*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn



*** Variables ***



*** Test Cases ***
LoginTest
    open browser    https://www.nopcommerce.com/en/login?returnUrl=%2Fen%2Fdemo     chrome
    maximize browser window
    input text      id:Username     pavanoltraining@gmail.com
    input text      id:Password     Test@123
    click element    xpath://*[@id="login-page"]/body/div[6]/section/div/div/div/div/div/div[2]/div[1]/div[2]/form/div[2]/div[4]/input
    close browser



*** Keywords ***