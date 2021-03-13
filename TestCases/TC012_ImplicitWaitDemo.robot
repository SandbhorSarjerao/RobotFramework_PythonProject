*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register

*** Test Cases ***
ImplicitWaitDemo

    open browser    ${url}      ${browser}
    maximize browser window

    ${implicitTime}=    get selenium implicit wait
    log to console      ${implicitTime}

    set selenium implicit wait    10 seconds

    select radio button    Gender   M

    input text    FirstName     Sarjerao
    input text    LastName      Sandbhor
    input text    Email         SarjeraoSandbhor@Gmail.com
    input text    Password      Test@123
    input text    ConfirmPassword      Test@123

    click button    register-button

    ${implicitTime}=    get selenium implicit wait
    log to console      ${implicitTime}

    close browser