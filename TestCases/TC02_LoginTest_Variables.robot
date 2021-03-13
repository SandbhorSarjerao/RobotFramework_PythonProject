*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com/en/login?returnurl=%2Fen%2Fdemo
${Username}     patilmaheshs1985@gmail.com
${Password}     MaheshPatilS1985

*** Test Cases ***
LoginTestWithVariables
# //*[@id="en-page"]/body/div[6]/header/div/div[3]/div[1]/ul/li[2]/a/span[1]
# //a[contains(text(),'Log in')]
    open browser    ${url}  ${browser}
    input text    id:Username   ${Username}
    input text    id:Password   ${Password}
    click element    xpath://*[@id="login-page"]/body/div[6]/section/div/div/div/div/div/div[2]/div[1]/div[2]/form/div[2]/div[4]/input
    close browser