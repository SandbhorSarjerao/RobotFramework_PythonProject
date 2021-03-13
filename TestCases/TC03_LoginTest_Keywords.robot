*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com/en/login?returnurl=%2Fen%2Fdemo
${Username}     patilmaheshs1985@gmail.com
${Password}     MaheshPatilS1985

*** Test Cases ***
LoginTestWithKeywords
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser


*** Keywords ***
LoginToApplication
    input text    id:Username   ${Username}
    input text    id:Password   ${Password}
    click element    xpath://*[@id="login-page"]/body/div[6]/section/div/div/div/div/div/div[2]/div[1]/div[2]/form/div[2]/div[4]/input
