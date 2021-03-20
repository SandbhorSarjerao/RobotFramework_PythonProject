*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      headlesschrome
${url}      https://www.nopcommerce.com/en/login?returnurl=%2Fen%2Fdemo
${Username}     patilmaheshs1985@gmail.com
${Password}     MaheshPatilS1985

*** Test Cases ***
Login Test With Headless Browser
    open browser        ${url}      ${browser}
    input text      id:Username       ${Username}
    input text      id:Password     ${Password}
    click element       xpath://input[@value='Log in']
    #page title should contain       Store Demo - nopCommerce
    page should contain     Store Demo
    close browser